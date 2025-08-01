import React, { useEffect, useState } from 'react';
import {
  Box,
  Button,
  Typography,
  Paper,
  Table,
  TableBody,
  TableCell,
  TableContainer,
  Container,
  TableHead,
  TableRow
} from '@mui/material';
import DeleteIcon from '@mui/icons-material/Delete';
import VisibilityIcon from '@mui/icons-material/Visibility';
import CloudUploadIcon from '@mui/icons-material/CloudUpload';
import axios from 'axios';

const requiredDocs = [
  { label: 'PSA Birth Certificate', key: 'BirthCertificate' },
  { label: 'Form 138 (4th Quarter / No failing Grades)', key: 'Form138' },
  { label: 'Certificate of Good Moral Character', key: 'GoodMoralCharacter' },
  { label: 'Certificate Belonging to Graduating Class', key: 'CertificateOfGraduatingClass' }
];

const vaccineDoc = { label: 'Copy of Vaccine Card (1st and 2nd Dose)', key: 'VaccineCard' };

const RequirementUploader = () => {
  const [uploads, setUploads] = useState([]);
  const [userID, setUserID] = useState('');
  const [selectedFiles, setSelectedFiles] = useState({});

  useEffect(() => {
    const id = localStorage.getItem('person_id');
    if (id) {
      setUserID(id);
      fetchUploads(id);
    }
  }, []);

  const fetchUploads = async (personId) => {
    try {
      const res = await axios.get('http://localhost:5000/uploads', {
        headers: { 'x-person-id': personId }
      });

      const uploadsData = res.data;
      setUploads(uploadsData);

      const rebuiltSelectedFiles = {};
      uploadsData.forEach((upload) => {
        const description = upload.description.toLowerCase();
        const filename = upload.original_name; // ✅ use safe original name

        if (description.includes('form 138')) rebuiltSelectedFiles['Form138'] = filename;
        if (description.includes('good moral')) rebuiltSelectedFiles['GoodMoralCharacter'] = filename;
        if (description.includes('birth certificate')) rebuiltSelectedFiles['BirthCertificate'] = filename;
        if (description.includes('graduating class')) rebuiltSelectedFiles['CertificateOfGraduatingClass'] = filename;
        if (description.includes('vaccine card')) rebuiltSelectedFiles['VaccineCard'] = filename;
      });

      setSelectedFiles(rebuiltSelectedFiles);
    } catch (err) {
      console.error('Fetch uploads failed:', err);
    }
  };


  const handleUpload = async (key, file) => {
    if (!file) return;

    setSelectedFiles((prev) => ({ ...prev, [key]: file.name }));

    const requirementId = await getRequirementIdByKey(key);
    if (!requirementId) return alert('Requirement not found.');

    const formData = new FormData();
    formData.append('file', file);
    formData.append('requirements_id', requirementId);
    formData.append('person_id', userID); // ✅ Correctly send person_id in body

    try {
      await axios.post('http://localhost:5000/upload', formData, {
        headers: {
          'Content-Type': 'multipart/form-data' // ✅ No need for 'x-person-id'
        }
      });

      fetchUploads(userID);
    } catch (err) {
      console.error('Upload error:', err);
      alert('Failed to upload. Please try again.');
    }
  };

  const getRequirementIdByKey = async (key) => {
    const res = await axios.get('http://localhost:5000/requirements');
    const match = res.data.find((r) => {
      const lower = r.description.toLowerCase();
      if (key === 'Form138') return lower.includes('form 138');
      if (key === 'GoodMoralCharacter') return lower.includes('good moral');
      if (key === 'BirthCertificate') return lower.includes('birth certificate');
      if (key === 'CertificateOfGraduatingClass') return lower.includes('graduating class');
      if (key === 'VaccineCard') return lower.includes('vaccine card');
      return false;
    });
    return match?.id || null;
  };

  const handleDelete = async (uploadId) => {
    try {
      await axios.delete(`http://localhost:5000/uploads/${uploadId}`, {
        headers: { 'x-person-id': userID }
      });

      // Refresh uploaded files list
      fetchUploads(userID);

      // Also remove file name from selectedFiles
      const deletedUpload = uploads.find((u) => u.upload_id === uploadId);
      if (deletedUpload) {
        const matchedKey = Object.keys(selectedFiles).find((key) =>
          deletedUpload.description.toLowerCase().includes(
            requiredDocs.concat(vaccineDoc).find((doc) => doc.key === key)?.label.toLowerCase() || ''
          )
        );

        if (matchedKey) {
          setSelectedFiles((prev) => {
            const updated = { ...prev };
            delete updated[matchedKey];
            return updated;
          });
        }
      }
    } catch (err) {
      console.error('Delete error:', err);
      alert('Failed to delete. Please try again.');
    }
  };


  const renderRow = (doc) => {
    const uploaded = uploads.find((u) =>
      u.description.toLowerCase().includes(doc.label.toLowerCase())
    );

    // 🔒 Disable right-click
    document.addEventListener('contextmenu', (e) => e.preventDefault());

    // 🔒 Block DevTools shortcuts silently
    document.addEventListener('keydown', (e) => {
      const isBlockedKey =
        e.key === 'F12' ||
        e.key === 'F11' ||
        (e.ctrlKey && e.shiftKey && (e.key === 'I' || e.key === 'J')) ||
        (e.ctrlKey && e.key === 'U');

      if (isBlockedKey) {
        e.preventDefault();
        e.stopPropagation();
      }
    });

    return (

      <TableRow key={doc.key}>
        {/* Document label */}
        <TableCell sx={{ fontWeight: 'bold', width: '25%' }}>{doc.label}</TableCell>

        <TableCell sx={{ width: '30%' }}>
          <Box sx={{ display: 'flex', alignItems: 'center', gap: 1, width: '100%' }}>
            {/* Fixed wrapper to prevent shifting */}
            <Box sx={{ width: '180px', flexShrink: 0 }}>
              {selectedFiles[doc.key] ? (
                <Box
                  sx={{
                    backgroundColor: '#e0e0e0',
                    padding: '6px 12px',
                    borderRadius: '4px',
                    fontSize: '14px',
                    fontWeight: 'bold',
                    height: '40px',
                    textAlign: "Center",
                    display: 'flex',
                    alignItems: 'center',
                    justifyContent: 'Center',
                    whiteSpace: 'nowrap',
                    overflow: 'hidden',
                    textOverflow: 'ellipsis',
                  }}
                  title={selectedFiles[doc.key]}
                >
                  {selectedFiles[doc.key]}
                </Box>
              ) : (
                <Box sx={{ height: '40px' }} />
              )}
            </Box>

            <Box sx={{ flexShrink: 0 }}>
              <Button
                variant="contained"
                component="label"
                startIcon={<CloudUploadIcon />}
                sx={{
                  backgroundColor: '#F0C03F',
                  color: 'white',
                  fontWeight: 'bold',
                  height: '40px',
                  textTransform: 'none',
                  minWidth: '140px',
                }}
              >
                Browse File
                <input
                  key={selectedFiles[doc.key] || Date.now()}
                  hidden
                  type="file"
                  accept=".jpg,.jpeg,.png,.pdf"
                  onChange={(e) => handleUpload(doc.key, e.target.files[0])}
                />
              </Button>
            </Box>
          </Box>
        </TableCell>


        <TableCell sx={{ width: '15%' }}>
          {/* Remarks */}
          <Typography
            sx={{
              fontStyle: uploaded?.remarks ? "normal" : "italic",
              color: uploaded?.remarks ? "inherit" : "#888",
            }}
          >
            {uploaded?.remarks || ""}
          </Typography>

          {/* Status (Only if Approved or Disapproved) */}
          {uploaded?.status == 1 || uploaded?.status == 2 ? (
            <Typography
              sx={{
                mt: 0.5,
                fontSize: "14px",
                color: uploaded?.status == 1 ? "green" : "red",
                fontWeight: "bold",
              }}
            >
              {uploaded?.status == 1 ? "Approved" : "Disapproved"}
            </Typography>
          ) : null}
        </TableCell>



        {/* Preview */}
        <TableCell sx={{ width: '10%' }}>
          {uploaded && (
            <Button
              variant="contained"
              color="primary"
              href={`http://localhost:5000${uploaded.file_path}`}
              target="_blank"
              startIcon={<VisibilityIcon />}
              sx={{
                height: '40px',
                textTransform: 'none',
                minWidth: '100px',
                width: '100%',
              }}
            >
              Preview
            </Button>
          )}
        </TableCell>

        {/* Delete */}
        <TableCell sx={{ width: '10%' }}>
          {uploaded && (
            <Button
              onClick={() => handleDelete(uploaded.upload_id)}
              startIcon={<DeleteIcon />}
              sx={{
                backgroundColor: 'maroon',
                color: 'white',
                '&:hover': { backgroundColor: '#600000' },
                fontWeight: 'bold',
                height: '40px',
                textTransform: 'none',
                minWidth: '100px',
                width: '100%',
              }}
            >
              Delete
            </Button>
          )}
        </TableCell>
      </TableRow>

    );
  };

  return (
    <Box sx={{ height: "calc(100vh - 150px)", overflowY: "auto", paddingRight: 1, backgroundColor: "transparent" }}>


      <Box sx={{ mt: 2, px: 2, marginLeft: "-10px" }}>
        <Container>
          <h1 style={{ fontSize: "50px", fontWeight: "bold", textAlign: "center", color: "maroon", marginTop: "25px" }}>UPLOAD DOCUMENTS</h1>
          <div style={{ textAlign: "center" }}>Complete the applicant form to secure your place for the upcoming academic year at EARIST.</div>
        </Container>

        <div style={{ height: "25px" }}></div>

        <Typography
          style={{
            fontSize: '15px',
            color: 'black',
            fontFamily: 'Arial',
            textAlign: 'left',
            marginBottom: '5px'
          }}
        >
          PLEASE NOTE: ONLY JPG, JPEG, PNG or PDF WITH MAXIMUM OF FILE SIZE OF 4MB ARE ALLOWED
        </Typography>

        <TableContainer component={Paper} sx={{ width: '95%' }}>
          <Table>
            <TableHead sx={{ backgroundColor: '#6D2323' }}>
              <TableRow>
                <TableCell sx={{ color: 'white' }}>Document</TableCell>
                <TableCell sx={{ color: 'white' }}>Upload</TableCell>
                <TableCell sx={{ color: 'white' }}>Remarks</TableCell>
                <TableCell sx={{ color: 'white' }}>Preview</TableCell>
                <TableCell sx={{ color: 'white' }}>Delete</TableCell>
              </TableRow>
            </TableHead>
            <TableBody>{requiredDocs.map((doc) => renderRow(doc))}</TableBody>
          </Table>
        </TableContainer>

        <Typography variant="h6" sx={{ mt: 2, color: '#6D2323' }}>
          Upload Your Medical Documents
        </Typography>

        <Typography
          style={{
            fontSize: '15px',
            color: 'black',
            fontFamily: 'Arial',
            textAlign: 'left',
            marginBottom: '5px'
          }}
        >
          PLEASE NOTE: ONLY JPG, JPEG, PNG or PDF WITH MAXIMUM OF FILE SIZE OF 4MB ARE ALLOWED
        </Typography>

        <TableContainer component={Paper} sx={{ width: '95%', mt: 2 }}>
          <Table>
            <TableHead sx={{ backgroundColor: '#6D2323' }}>
              <TableRow>
                <TableCell sx={{ color: 'white' }}>Document</TableCell>
                <TableCell sx={{ color: 'white' }}>Upload</TableCell>
                <TableCell sx={{ color: 'white' }}>Remarks</TableCell>
                <TableCell sx={{ color: 'white' }}>Preview</TableCell>
                <TableCell sx={{ color: 'white' }}>Delete</TableCell>
              </TableRow>
            </TableHead>
            <TableBody>{renderRow(vaccineDoc)}</TableBody>
          </Table>
        </TableContainer>
      </Box>
    </Box>
  );
};

export default RequirementUploader;
