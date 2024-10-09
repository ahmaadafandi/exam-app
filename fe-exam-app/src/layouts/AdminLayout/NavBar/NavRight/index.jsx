import React, { useEffect, useState } from 'react';
import { Card, ListGroup, Dropdown } from 'react-bootstrap';
import { Link, useNavigate } from 'react-router-dom';
import PerfectScrollbar from 'react-perfect-scrollbar';
import { getTokenWithExpiration } from '../../../../views/auth/Session';

import ChatList from './ChatList';

import axios from 'axios';

import avatar1 from '../../../../assets/images/user/avatar-1.jpg';
import avatar2 from '../../../../assets/images/user/avatar-2.jpg';
import avatar3 from '../../../../assets/images/user/avatar-3.jpg';
import avatar4 from '../../../../assets/images/user/avatar-4.jpg';
import appConfig from 'config/appConfig';

const NavRight = () => {
  const [user, setUser] = useState({});
  const baseURL = 'http://127.0.0.1:8000/api';
  const [listOpen, setListOpen] = useState(false);
  const [isLoading, setIsLoading] = useState(false);

  const navigate = useNavigate();

  useEffect(() => {
    if (!token) {
      navigate('/');
    }
    fetchData();
  }, []);

  const token = getTokenWithExpiration('token');

  const fetchData = async () => {
    axios.defaults.headers.common['Authorization'] = `Bearer ${token}`;
    await axios.get(`${baseURL}/get/user`).then((response) => {
      setUser(response.data);
    });
  };

  const logoutHandler = async () => {
    setIsLoading(true);
    axios.defaults.headers.common['Authorization'] = `Bearer ${token}`;
    await axios.post(`${baseURL}/logout`).then(() => {
      localStorage.removeItem('token');
      navigate('/');
    });
  };

  const notiData = [
    {
      name: 'Joseph William',
      image: avatar2,
      details: 'Purchase New Theme and make payment',
      activity: '30 min'
    },
    {
      name: 'Sara Soudein',
      image: avatar3,
      details: 'currently login',
      activity: '30 min'
    },
    {
      name: 'Suzen',
      image: avatar4,
      details: 'Purchase New Theme and make payment',
      activity: 'yesterday'
    }
  ];

  return (
    <React.Fragment>
      <ListGroup as="ul" bsPrefix=" " className="navbar-nav ml-auto" id="navbar-right">
        <ListGroup.Item as="li" bsPrefix=" ">
          <Dropdown align="end">
            <Dropdown.Toggle as={Link} variant="link" to="#" id="dropdown-basic">
              <i className="feather icon-bell icon" />
            </Dropdown.Toggle>
            <Dropdown.Menu align="end" className="notification notification-scroll">
              <div className="noti-head">
                <h6 className="d-inline-block m-b-0">Notifications</h6>
                <div className="float-end">
                  <Link to="#" className="me-2">
                    mark as read
                  </Link>
                  <Link to="#">clear all</Link>
                </div>
              </div>
              <PerfectScrollbar>
                <ListGroup as="ul" bsPrefix=" " variant="flush" className="noti-body">
                  <ListGroup.Item as="li" bsPrefix=" " className="n-title">
                    <p className="m-b-0">NEW</p>
                  </ListGroup.Item>
                  <ListGroup.Item as="li" bsPrefix=" " className="notification">
                    <Card
                      className="d-flex align-items-center shadow-none mb-0 p-0"
                      style={{ flexDirection: 'row', backgroundColor: 'unset' }}
                    >
                      <img className="img-radius" src={avatar1} alt="Generic placeholder" />
                      <Card.Body className="p-0">
                        <p>
                          <strong>{user.name}</strong>
                          <span className="n-time text-muted">
                            <i className="icon feather icon-clock me-2" />
                            30 min
                          </span>
                        </p>
                        <p>New ticket Added</p>
                      </Card.Body>
                    </Card>
                  </ListGroup.Item>
                  <ListGroup.Item as="li" bsPrefix=" " className="n-title">
                    <p className="m-b-0">EARLIER</p>
                  </ListGroup.Item>
                  {notiData.map((data, index) => {
                    return (
                      <ListGroup.Item key={index} as="li" bsPrefix=" " className="notification">
                        <Card
                          className="d-flex align-items-center shadow-none mb-0 p-0"
                          style={{ flexDirection: 'row', backgroundColor: 'unset' }}
                        >
                          <img className="img-radius" src={data.image} alt="Generic placeholder" />
                          <Card.Body className="p-0">
                            <p>
                              <strong>{data.name}</strong>
                              <span className="n-time text-muted">
                                <i className="icon feather icon-clock me-2" />
                                {data.activity}
                              </span>
                            </p>
                            <p>{data.details}</p>
                          </Card.Body>
                        </Card>
                      </ListGroup.Item>
                    );
                  })}
                </ListGroup>
              </PerfectScrollbar>
              <div className="noti-footer">
                <Link to="#">show all</Link>
              </div>
            </Dropdown.Menu>
          </Dropdown>
        </ListGroup.Item>
        {/* <ListGroup.Item as="li" bsPrefix=" ">
          <Dropdown>
            <Dropdown.Toggle as={Link} variant="link" to="#" className="displayChatbox" onClick={() => setListOpen(true)}>
              <i className="icon feather icon-mail" />
            </Dropdown.Toggle>
          </Dropdown>
        </ListGroup.Item> */}
        <ListGroup.Item as="li" bsPrefix=" ">
          <Dropdown align={'end'} className="drp-user">
            <Dropdown.Toggle as={Link} variant="link" to="#" id="dropdown-basic">
              {/* <i className="icon feather icon-settings" /> */}
              <span style={{ fontSize: '18px', marginRight: '10px' }}>{user.name}</span>
              <img src={appConfig.baseURL + '/storage/images/' + user.avatar} alt="Settings" className="settings-icon" />
            </Dropdown.Toggle>
            <Dropdown.Menu align="end" className="profile-notification">
              <div className="pro-head">
                <img src={appConfig.baseURL + '/storage/images/' + user.avatar} className="img-radius" alt="User Profile" />
                <span>{user.name}</span>
                <a href="#" onClick={logoutHandler} className="dud-logout" title="Logout">
                  {!isLoading ? (
                    <i className="feather icon-log-out" />
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
                    </div>
                  )}
                </a>
              </div>
              <ListGroup as="ul" bsPrefix=" " variant="flush" className="pro-body">
                <ListGroup.Item as="li" bsPrefix=" ">
                  <Link to="#" className="dropdown-item">
                    <i className="feather icon-settings" /> Settings
                  </Link>
                </ListGroup.Item>
                <ListGroup.Item as="li" bsPrefix=" ">
                  <Link to="#" className="dropdown-item">
                    <i className="feather icon-user" /> Profile
                  </Link>
                </ListGroup.Item>
              </ListGroup>
            </Dropdown.Menu>
          </Dropdown>
        </ListGroup.Item>
      </ListGroup>
      <ChatList listOpen={listOpen} closed={() => setListOpen(false)} />
    </React.Fragment>
  );
};

export default NavRight;
