import React, { useEffect, useState } from 'react';
import { Row, Col, Alert, Button } from 'react-bootstrap';
import * as Yup from 'yup';
import { Formik } from 'formik';
import axios from 'axios';
import Swal from 'sweetalert2';
import withReactContent from 'sweetalert2-react-content';
import { setTokenWithExpiration, getTokenWithExpiration } from '../Session';
import { useNavigate } from 'react-router-dom';
import appConfig from 'config/appConfig';

const JWTLogin = () => {
  const navigate = useNavigate();
  const MySwal = withReactContent(Swal);

  const [isLoading, setIsLoading] = useState(false);

  useEffect(() => {
    if (getTokenWithExpiration('token')) {
      //redirect page dashboard
      navigate('/app/dashboard/default');
    }
  }, []);

  const [formData, setFormData] = useState({
    email: '',
    password: ''
  });

  const initialFormData = {
    email: '',
    password: ''
  };

  const [formErrors, setFormErrors] = useState({
    email: '',
    password: ''
  });

  const validateForm = () => {
    let errors = {};
    let formIsValid = true;

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

    setFormErrors(errors);
    return formIsValid;
  };

  const handleInputChange = (event) => {
    const { name, value } = event.target;
    setFormData({ ...formData, [name]: value });
  };

  const loginHandler = (e) => {
    e.preventDefault();
    setIsLoading(true);
    if (validateForm()) {
      axios
        .post(`${appConfig.baseurlAPI}/login`, formData, {
          headers: {
            'Content-Type': 'application/json'
          }
        })
        .then((response) => {
          if (response.status === 200) {
            // Simpan token, user, dan role ke localStorage
            const { token, user, role } = response.data;
            setTokenWithExpiration('token', token);
            localStorage.setItem('user', JSON.stringify(user));
            localStorage.setItem('role', role);
            MySwal.fire({
              title: 'Success!',
              text: 'Login successfully',
              icon: 'success',
              timer: 1500
            }).then(() => {
              navigate('/app/dashboard/default');
            });
          } else {
            throw new Error('Network response was not ok');
          }
          setIsLoading(false);
        })
        .catch((error) => {
          MySwal.fire({
            title: 'Failed!',
            text: error.response.data.message,
            icon: 'error'
          });
          setIsLoading(false);
        });
    }
  };

  return (
    <Formik
      initialValues={{
        email: 'info@codedthemes.com',
        password: '123456',
        submit: null
      }}
      validationSchema={Yup.object().shape({
        email: Yup.string().email('Must be a valid email').max(255).required('Email is required'),
        password: Yup.string().max(255).required('Password is required')
      })}
    >
      {({ errors, handleBlur, handleChange, handleSubmit, isSubmitting, touched, values }) => (
        <form noValidate onSubmit={loginHandler}>
          <div className="form-group mb-3">
            <input
              className="form-control"
              label="Email Address"
              name="email"
              //   onBlur={handleBlur}
              onChange={handleInputChange}
              type="email"
              value={formData.email}
              error={formErrors.email}
            />
            {touched.email && errors.email && <small className="text-danger form-text">{errors.email}</small>}
          </div>
          <div className="form-group mb-4">
            <input
              className="form-control"
              label="Password"
              name="password"
              //   onBlur={handleBlur}
              onChange={handleInputChange}
              type="password"
              value={formData.password}
              error={formErrors.password}
            />
            {touched.password && errors.password && <small className="text-danger form-text">{errors.password}</small>}
          </div>

          <div className="custom-control custom-checkbox  text-start mb-4 mt-2">
            <input type="checkbox" className="custom-control-input mx-2" id="customCheck1" />
            <label className="custom-control-label" htmlFor="customCheck1">
              Save credentials.
            </label>
          </div>

          {errors.submit && (
            <Col sm={12}>
              <Alert>{errors.submit}</Alert>
            </Col>
          )}

          <Row>
            <Col mt={2}>
              <Button className="btn-block mb-4" color="primary" disabled={isSubmitting} size="large" type="submit" variant="primary">
                {!isLoading ? (
                  'Login'
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
            </Col>
          </Row>
        </form>
      )}
    </Formik>
  );
};

export default JWTLogin;
