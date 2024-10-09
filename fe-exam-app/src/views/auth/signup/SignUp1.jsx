import axios from 'axios';
import Swal from 'sweetalert2';
import React, { useState } from 'react';
import { Card, Row, Col } from 'react-bootstrap';
import { NavLink, Link, useNavigate } from 'react-router-dom';
import withReactContent from 'sweetalert2-react-content';
import Breadcrumb from '../../../layouts/AdminLayout/Breadcrumb';
import appConfig from 'config/appConfig';

const SignUp1 = () => {
  const navigate = useNavigate();
  const MySwal = withReactContent(Swal);

  const [isLoading, setIsLoading] = useState(false);

  const [formData, setFormData] = useState({
    name: '',
    email: '',
    password: '',
    password_confirmation: ''
  });

  const initialFormData = {
    name: '',
    email: '',
    password: '',
    password_confirmation: ''
  };

  const [formErrors, setFormErrors] = useState({
    name: '',
    email: '',
    password: '',
    password_confirmation: ''
  });

  const validateForm = () => {
    let errors = {};
    let formIsValid = true;

    // Validate input name
    if (!formData.name) {
      formIsValid = false;
      errors.name = 'Full name is required';
    }

    // Validate input description
    if (!formData.email) {
      formIsValid = false;
      errors.email = 'Email is required';
    }

    // Validate input description
    if (!formData.password) {
      formIsValid = false;
      errors.password = 'Password is required';
    }

    // Validate input description
    if (!formData.password_confirmation) {
      formIsValid = false;
      errors.password_confirmation = 'Confirmation Password is required';
    }

    setFormErrors(errors);
    return formIsValid;
  };

  const handleInputChange = (event) => {
    const { name, value } = event.target;
    setFormData({ ...formData, [name]: value });
  };

  const registerHandler = (e) => {
    e.preventDefault();
    setIsLoading(true);

    if (validateForm()) {
      axios
        .post(`${appConfig.baseurlAPI}/register`, formData, {
          headers: {
            'Content-Type': 'application/json'
          }
        })
        .then((response) => {
          if (response.status === 201) {
            MySwal.fire({
              title: 'Success!',
              text: 'Registered successfully',
              icon: 'success',
              timer: 1500
            }).then(() => {
              navigate('/');
            });
          } else {
            throw new Error('Network response was not ok');
          }
          setIsLoading(false);
        })
        .catch((error) => {
          var err = error.response.data;
          if (err.email) {
            MySwal.fire({
              title: 'Failed!',
              text: err.email,
              icon: 'error'
            });
          } else if (err.password) {
            MySwal.fire({
              title: 'Failed!',
              text: err.password,
              icon: 'error'
            });
          }
          setIsLoading(false);
        });
    }
  };

  return (
    <React.Fragment>
      <Breadcrumb />
      <div className="auth-wrapper">
        <div className="auth-content">
          <div className="auth-bg">
            <span className="r" />
            <span className="r s" />
            <span className="r s" />
            <span className="r" />
          </div>
          <Card className="borderless">
            <Row className="align-items-center">
              <Col>
                <Card.Body className="text-center">
                  <div className="mb-4">
                    <i className="feather icon-user-plus auth-icon" />
                  </div>
                  <h3 className="mb-4">Sign up</h3>
                  <form onSubmit={registerHandler}>
                    <div className="input-group mb-3">
                      <input
                        type="text"
                        className="form-control"
                        placeholder="Name"
                        name="name"
                        value={formData.name}
                        onChange={handleInputChange}
                        error={formErrors.name}
                      />
                    </div>
                    <div className="input-group mb-3">
                      <input
                        type="email"
                        className="form-control"
                        placeholder="Email address"
                        name="email"
                        value={formData.email}
                        onChange={handleInputChange}
                        error={formErrors.email}
                      />
                    </div>
                    <div className="input-group mb-4">
                      <input
                        type="password"
                        className="form-control"
                        placeholder="Password"
                        name="password"
                        value={formData.password}
                        onChange={handleInputChange}
                        error={formErrors.password}
                      />
                    </div>
                    <div className="input-group mb-4">
                      <input
                        type="password"
                        className="form-control"
                        placeholder="Confirmation Password"
                        name="password_confirmation"
                        value={formData.password_confirmation}
                        onChange={handleInputChange}
                        error={formErrors.password_confirmation}
                      />
                    </div>
                    <div className="form-check  text-start mb-4 mt-2">
                      <input type="checkbox" className="form-check-input" id="customCheck1" defaultChecked={false} />
                      <label className="form-check-label" htmlFor="customCheck1">
                        Send me the <Link to="#"> Newsletter</Link> weekly.
                      </label>
                    </div>
                    <button className="btn btn-primary mb-4">
                      {!isLoading ? (
                        'Register'
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
                    </button>
                  </form>
                  <p className="mb-2">
                    Already have an account?{' '}
                    <NavLink to={'/auth/signin-1'} className="f-w-400">
                      Login
                    </NavLink>
                  </p>
                </Card.Body>
              </Col>
            </Row>
          </Card>
        </div>
      </div>
    </React.Fragment>
  );
};

export default SignUp1;
