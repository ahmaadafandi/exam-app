import React, { useEffect, useRef, useState } from 'react';
import { Row, Col, Card, Table } from 'react-bootstrap';
import { CKEditor } from '@ckeditor/ckeditor5-react';
import ClassicEditor from '@ckeditor/ckeditor5-build-classic';
import { useNavigate, useParams } from 'react-router-dom';
import Swal from 'sweetalert2';
import withReactContent from 'sweetalert2-react-content';
import axios from 'axios';
import appConfig from 'config/appConfig';
import TextAreaValidation from 'components/Form/TextareaValidation';
import Loading from 'components/Loader/Loading';

const BootstrapTable = () => {
  const navigate = useNavigate();

  const { id } = useParams(); // Ambil id dari route parameter
  const [jenis, setJenis] = useState([]);
  const [paketTo, setPaketTo] = useState([]);
  const [isLoading, setIsLoading] = useState(true);
  const MySwal = withReactContent(Swal);
  const editorRef = useRef(null); // Ref untuk CKEditor
  const [isEditing, setIsEditing] = useState(!!id);
  const [loading, setLoading] = useState(false);

  const [formData, setFormData] = useState({
    jenis_id: '',
    paket_to_id: '',
    soal: '',
    pilihan1: '',
    pilihan2: '',
    pilihan3: '',
    pilihan4: '',
    pilihan5: ''
  });

  const initialFormData = {
    jenis_id: '',
    paket_to_id: '',
    soal: '',
    pilihan1: '',
    pilihan2: '',
    pilihan3: '',
    pilihan4: '',
    pilihan5: ''
  };

  const [formErrors, setFormErrors] = useState({
    jenis_id: '',
    paket_to_id: '',
    soal: '',
    pilihan1: '',
    pilihan2: '',
    pilihan3: '',
    pilihan4: '',
    pilihan5: ''
  });

  useEffect(() => {
    axios
      .get(`${appConfig.baseurlAPI}/soal/create`)
      .then((data) => {
        setJenis(data.data.jenis);
        setPaketTo(data.data.paket_to);

        if (isEditing) {
          setLoading(true);
          axios
            .get(`${appConfig.baseurlAPI}/soal/${id}`)
            .then((response) => {
              const soalData = response.data.data;
              setFormData({
                jenis_id: soalData.jenis_id,
                paket_to_id: soalData.paket_to_id,
                soal: soalData.soal,
                pilihan1: soalData.pilihan1,
                pilihan2: soalData.pilihan2,
                pilihan3: soalData.pilihan3,
                pilihan4: soalData.pilihan4,
                pilihan5: soalData.pilihan5
              });
              if (editorRef.current) {
                editorRef.current.setData(soalData.soal);
              }

              setLoading(false);
            })
            .catch((error) => {
              console.error('There was an error fetching the post data!', error);
            });
        }
      })
      .catch((error) => {
        if (error.response && error.response.status === 403) {
          navigate('/403');
        } else {
          console.log(error);
        }
        setIsLoading(false);
      });
  }, [isEditing, id, navigate]);

  const handleBack = () => {
    navigate('/soal');
  };

  const handleInputChange = (event) => {
    const { name, value } = event.target;
    console.log(`Input ${name} changed to ${value}`); // Debug log
    setFormData((prevFormData) => ({
      ...prevFormData,
      [name]: value
    }));
  };

  const handleCkEditorChange = (event, editor) => {
    const data = editor.getData();
    setFormData((prevFormData) => ({
      ...prevFormData,
      soal: data
    }));
  };

  const resetForm = () => {
    setFormData(initialFormData);
    if (editorRef.current) {
      editorRef.current.setData(''); // Reset CKEditor content
    }
  };

  const validateForm = () => {
    let errors = {};
    let formIsValid = true;

    if (!formData.paket_to_id) {
      formIsValid = false;
      errors.paket_to_id = 'paket_to_id is required';
    }

    setFormErrors(errors);
    return formIsValid;
  };

  const handleSubmit = (event) => {
    event.preventDefault();

    // Logging form data for debugging purposes
    console.log('FormData before submit:', formData); // Debug log

    if (validateForm()) {
      const formDataObj = new FormData();
      formDataObj.append('paket_to_id', formData.paket_to_id);
      formDataObj.append('jenis_id', formData.jenis_id);
      formDataObj.append('soal', formData.soal);
      formDataObj.append('pilihan1', formData.pilihan1);
      formDataObj.append('pilihan2', formData.pilihan2);
      formDataObj.append('pilihan3', formData.pilihan3);
      formDataObj.append('pilihan4', formData.pilihan4);
      formDataObj.append('pilihan5', formData.pilihan5);

      //   if (formData.image) {
      //     formDataObj.append('image', formData.image);
      //   }

      // Logging the FormData object to see what's being sent
      console.log('Sending data:', Array.from(formDataObj.entries())); // Debug log

      const url = isEditing ? `${appConfig.baseurlAPI}/soal/${id}` + formDataObj.append('_method', 'put') : `${appConfig.baseurlAPI}/soal`;
      const method = 'post';

      axios({
        method,
        url,
        data: formDataObj,
        headers: {
          'Content-Type': 'multipart/form-data'
        }
      })
        .then((response) => {
          console.log('Response from server:', response); // Debug log
          if (response.status === 200 || response.status === 201) {
            Swal.fire({
              title: 'Success!',
              text: `Data ${isEditing ? 'updated' : 'created'} successfully`,
              icon: 'success',
              timer: 1500
            }).then(() => {
              resetForm();
              isEditing ? navigate('/soal') : navigate('/soal-manage'); // Uncomment to navigate back after success
            });
          } else {
            throw new Error('Network response was not ok');
          }
        })
        .catch((error) => {
          console.error('Error:', error);
          if (error.response && error.response.status === 422) {
            console.error('Validation errors:', error.response.data.errors);
            MySwal.fire({
              title: 'Validation Error',
              html: JSON.stringify(error.response.data.errors),
              icon: 'error',
              timer: 2000
            });
          } else {
            MySwal.fire({
              title: 'Oops...',
              html: 'Something went wrong.',
              icon: 'error',
              timer: 2000
            });
          }
        });
    }
  };

  return (
    <React.Fragment>
      {loading ? (
        <div className="loading-container">
          <Loading />
        </div>
      ) : (
        <form onSubmit={handleSubmit} encType="multipart/form-data">
          <Row>
            <Col className="col-md-12">
              <Card>
                <Card.Header>
                  <Card.Title as="h5">{isEditing ? 'Mengubah' : 'Membuat'} Soal</Card.Title>
                  <span className="d-block m-t-5">
                    use bootstrap <code>Table</code> component
                  </span>
                </Card.Header>
              </Card>
            </Col>
            <Col className="col-md-7">
              <Card>
                <Card.Body>
                  <div className="form-group mb-3">
                    <label>Paket Try Out</label>
                    <select
                      name="paket_to_id"
                      id="paket_to_id"
                      className={`form-control ${formErrors.paket_to_id ? 'is-invalid' : ''}`}
                      value={formData.paket_to_id || ''}
                      onChange={handleInputChange}
                    >
                      <option value="">-- Pilih Paket --</option>

                      {Array.isArray(paketTo) &&
                        paketTo.length &&
                        paketTo.map((row, index) => (
                          <option value={row.id} key={index}>
                            {row.paket}
                          </option>
                        ))}
                    </select>
                    {formErrors.paket_to_id && <div className="invalid-feedback">{formErrors.paket_to_id}</div>}
                  </div>

                  <div className="form-group mb-3">
                    <label>Jenis Soal</label>
                    <select
                      name="jenis_id"
                      id="jenis_id"
                      className={`form-control ${formErrors.jenis_id ? 'is-invalid' : ''}`}
                      value={formData.jenis_id || ''}
                      onChange={handleInputChange}
                    >
                      <option value="">-- Pilih Jenis --</option>

                      {Array.isArray(jenis) &&
                        jenis.length &&
                        jenis.map((row, index) => (
                          <option value={row.id} key={index}>
                            {row.kategori} - {row.jenis}
                          </option>
                        ))}
                    </select>
                    {formErrors.jenis_id && <div className="invalid-feedback">{formErrors.jenis_id}</div>}
                  </div>
                  <label>Soal</label>
                  <CKEditor
                    editor={ClassicEditor}
                    config={{
                      ckfinder: {
                        uploadUrl: `${appConfig.baseurlAPI}/soal/ckeditor/image`
                      },
                      image: {
                        styles: ['alignLeft', 'alignCenter', 'alignRight'],
                        toolbar: [
                          'imageTextAlternative',
                          'imageStyle:alignLeft',
                          'imageStyle:alignCenter',
                          'imageStyle:alignRight',
                          'imageStyle:full',
                          'imageStyle:side'
                        ]
                      }
                    }}
                    onChange={handleCkEditorChange}
                    onReady={(editor) => {
                      editorRef.current = editor;
                      if (isEditing && formData.soal) {
                        editor.setData(formData.soal);
                      }
                    }}
                  />
                </Card.Body>
              </Card>
            </Col>
            <Col className="col-md-5">
              <Card>
                <Card.Body>
                  <TextAreaValidation
                    label="Pilihan 1"
                    name="pilihan1"
                    value={formData.pilihan1}
                    onChange={handleInputChange}
                    error={formErrors.pilihan1}
                  />
                  <TextAreaValidation
                    label="Pilihan 2"
                    name="pilihan2"
                    value={formData.pilihan2}
                    onChange={handleInputChange}
                    error={formErrors.pilihan2}
                  />
                  <TextAreaValidation
                    label="Pilihan 3"
                    name="pilihan3"
                    value={formData.pilihan3}
                    onChange={handleInputChange}
                    error={formErrors.pilihan3}
                  />
                  <TextAreaValidation
                    label="Pilihan 4"
                    name="pilihan4"
                    value={formData.pilihan4}
                    onChange={handleInputChange}
                    error={formErrors.pilihan4}
                  />
                  <TextAreaValidation
                    label="Pilihan 5"
                    name="pilihan5"
                    value={formData.pilihan5}
                    onChange={handleInputChange}
                    error={formErrors.pilihan5}
                  />
                  <div className="d-flex justify-content-end mt-4">
                    <button type="button" className="btn btn-light" onClick={handleBack}>
                      Kembali
                    </button>
                    <button type="submit" className="btn btn-primary mr-2 btnSimpan">
                      Simpan
                    </button>
                  </div>
                </Card.Body>
              </Card>
            </Col>
          </Row>
        </form>
      )}
    </React.Fragment>
  );
};

export default BootstrapTable;
