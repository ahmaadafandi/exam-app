import React, { useEffect, useState } from 'react';
import { Row, Col, Card, Form, Button, Image } from 'react-bootstrap';
import Loading from 'components/Loader/Loading';
import appConfig from 'config/appConfig';
import Swal from 'sweetalert2';
import withReactContent from 'sweetalert2-react-content';
import axios from 'axios';

const Setting = () => {
  const [loading, setLoading] = useState(true);
  const [isLoadingBtn, setIsLoadingBtn] = useState(false);
  const MySwal = withReactContent(Swal);
  const [user, setUser] = useState({
    name: '',
    email: '',
    avatar: '',
    phone: '',
    address: ''
  });

  const [formPassword, setFormPassword] = useState({
    password_lama: '',
    password_baru: '',
    confirm_password: ''
  });

  const initialFormPassword = {
    password_lama: '',
    password_baru: '',
    confirm_password: ''
  };

  const [formErrorsPassword, setFormErrorsPassword] = useState({
    password_lama: '',
    password_baru: '',
    confirm_password: ''
  });

  const validateForm = () => {
    let errors = {};
    let formIsValid = true;

    // Validate input
    if (!formPassword.password_lama) {
      formIsValid = false;
      errors.password_lama = 'password lama is required';
    } else if (!formPassword.password_baru) {
      formIsValid = false;
      errors.password_baru = 'password baru is required';
    } else if (!formPassword.confirm_password) {
      formIsValid = false;
      errors.confirm_password = 'confirm password is required';
    }

    setFormErrorsPassword(errors);
    return formIsValid;
  };

  useEffect(() => {
    // Mengambil data user dari localStorage
    const userData = localStorage.getItem('user');
    if (userData) {
      const parsedUserData = JSON.parse(userData);
      setUser({
        name: parsedUserData.name,
        email: parsedUserData.email,
        avatar: parsedUserData.avatar
          ? appConfig.baseURL + '/storage/images/' + parsedUserData.avatar
          : appConfig.baseURL + '/storage/images/user_icon.png' // Ganti dengan path avatar default
      });
    }

    // Simulasi proses loading
    const timer = setTimeout(() => {
      setLoading(false); // Menghentikan loading setelah 2 detik
    }, 2000);

    return () => clearTimeout(timer); // Cleanup timer
  }, []);

  const handleInputChangePassword = (event) => {
    const { name, value } = event.target;
    setFormPassword({ ...formPassword, [name]: value });
  };

  const handleSubmit = (event) => {
    event.preventDefault();

    if (validateForm()) {
      setIsLoadingBtn(true);
      setIsLoadingBtn(true);
      const data = new FormData();
      data.append('password_lama', formPassword.password_lama);
      data.append('password_baru', formPassword.password_baru);
      data.append('confirm_password', formPassword.confirm_password);
      data.append('_method', 'post');
      axios
        .post(`${appConfig.baseurlAPI}/user/setting/profile`, data, {
          headers: {
            'Content-Type': 'multipart/form-data'
          }
        })
        .then((response) => {
          console.log(response);
          if (response.status === 201) {
            Swal.fire({
              title: 'Success!',
              text: 'Password berhasil diubah',
              icon: 'success',
              timer: 1500
            }).then(() => {
              setFormPassword(initialFormPassword); // set initial value for input
              setIsLoadingBtn(false);
            });
          } else {
            throw new Error('Network response was not ok');
          }
        })
        .catch((error) => {
          if (error.response && error.response.status === 422) {
            // Menampilkan pesan error yang didapat dari server
            const serverErrors = error.response.data.errors;
            if (serverErrors.password_lama) {
              MySwal.fire({
                title: 'Oops...',
                html: serverErrors.password_lama[0],
                icon: 'error'
              });
            }
          } else {
            MySwal.fire({
              title: 'Oops...',
              html: 'Something went wrong.',
              icon: 'error',
              timer: 2000
            });
          }
          setIsLoadingBtn(false);
        });
    }
  };

  return (
    <React.Fragment>
      {loading ? (
        <div className="loading-container d-flex justify-content-center align-items-center" style={{ height: '100vh' }}>
          <Loading />
        </div>
      ) : (
        <Row className="justify-content-center">
          {/* Profil Avatar dan Info */}
          <Col md={4} className="mb-4">
            <Card className="text-center shadow-sm">
              <Card.Body>
                <Image src={user.avatar} roundedCircle fluid style={{ width: '150px', height: '150px' }} alt="Avatar" />
                <p className="mt-3 fs-5 fw-bold">{user.name}</p>
                <p className="text-muted mb-1">{user.email}</p>
                <Button variant="outline-primary" size="sm" className="mt-2">
                  Upload Avatar
                </Button>
              </Card.Body>
            </Card>
          </Col>

          {/* Detail Informasi */}
          <Col md={8}>
            <Card className="shadow-sm">
              <Card.Header className="bg-primary text-white">
                <Card.Title as="h5">Informasi Profil</Card.Title>
              </Card.Header>
              <Card.Body>
                <Form>
                  <Form.Group className="mb-3">
                    <Form.Label>Nama</Form.Label>
                    <Form.Control type="text" placeholder="Masukkan nama" defaultValue={user.name} />
                  </Form.Group>
                  <Form.Group className="mb-3">
                    <Form.Label>Email</Form.Label>
                    <Form.Control type="email" placeholder="Masukkan email" defaultValue={user.email} />
                  </Form.Group>
                  <Button variant="primary" className="w-100">
                    Simpan Perubahan
                  </Button>
                </Form>
              </Card.Body>
            </Card>

            {/* Ubah Password */}
            <Card className="mt-4 shadow-sm">
              <Card.Header className="bg-warning text-dark">
                <Card.Title as="h5">Ubah Password</Card.Title>
              </Card.Header>
              <Card.Body>
                <Form onSubmit={handleSubmit} encType="multipart/form-data">
                  <Form.Group className="mb-3">
                    <Form.Label>Password Lama</Form.Label>
                    <input
                      type="password"
                      name="password_lama"
                      id="password_lama"
                      className={`form-control ${formErrorsPassword.password_lama ? 'is-invalid' : ''}`}
                      value={formPassword.password_lama}
                      onChange={handleInputChangePassword}
                    />
                    {formErrorsPassword.password_lama && <div className="invalid-feedback">{formErrorsPassword.password_lama}</div>}
                  </Form.Group>
                  <Form.Group className="mb-3">
                    <Form.Label>Password Baru</Form.Label>
                    <input
                      type="password"
                      name="password_baru"
                      id="password_baru"
                      className={`form-control ${formErrorsPassword.password_baru ? 'is-invalid' : ''}`}
                      value={formPassword.password_baru}
                      onChange={handleInputChangePassword}
                    />
                    {formErrorsPassword.password_baru && <div className="invalid-feedback">{formErrorsPassword.password_baru}</div>}
                  </Form.Group>
                  <Form.Group className="mb-3">
                    <Form.Label>Konfirmasi Password Baru</Form.Label>
                    <input
                      type="password"
                      name="confirm_password"
                      id="confirm_password"
                      className={`form-control ${formErrorsPassword.confirm_password ? 'is-invalid' : ''}`}
                      value={formPassword.confirm_password}
                      onChange={handleInputChangePassword}
                    />
                    {formErrorsPassword.confirm_password && <div className="invalid-feedback">{formErrorsPassword.confirm_password}</div>}
                  </Form.Group>
                  <Button variant="warning" className="w-100" type="submit">
                    {!isLoadingBtn ? (
                      'Ubah Password'
                    ) : (
                      <div className="d-flex justify-content-center">
                        <svg xmlns="http://www.w3.org/2000/svg" width="1.5em" height="1.5em" viewBox="0 0 24 24">
                          <g stroke="currentColor">
                            <circle cx="12" cy="12" r="9.5" fill="none" strokeLinecap="round" strokeWidth="3">
                              <animate
                                attributeName="stroke-dasharray"
                                calcMode="spline"
                                dur="1.5s"
                                keySplines="0.42,0,0.58,1;0.42,0,0.58,1;0.42,0,0.58,1"
                                keyTimes="0;0.475;0.95;1"
                                repeatCount="indefinite"
                                values="0 150;42 150;42 150;42 150"
                              />
                              <animate
                                attributeName="stroke-dashoffset"
                                calcMode="spline"
                                dur="1.5s"
                                keySplines="0.42,0,0.58,1;0.42,0,0.58,1;0.42,0,0.58,1"
                                keyTimes="0;0.475;0.95;1"
                                repeatCount="indefinite"
                                values="0;-16;-59;-59"
                              />
                            </circle>
                            <animateTransform
                              attributeName="transform"
                              dur="2s"
                              repeatCount="indefinite"
                              type="rotate"
                              values="0 12 12;360 12 12"
                            />
                          </g>
                        </svg>
                        <span className=""> Loading...</span>
                      </div>
                    )}
                  </Button>
                </Form>
              </Card.Body>
            </Card>
          </Col>
        </Row>
      )}
    </React.Fragment>
  );
};

export default Setting;
