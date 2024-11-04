import React, { useContext, useEffect, useState } from 'react';
import { Link } from 'react-router-dom';

import { ConfigContext } from '../../../../contexts/ConfigContext';
import * as actionType from '../../../../store/actions';
// import { getTokenWithExpiration } from 'views/auth/Session';
// import axios from 'axios';
// import appConfig from 'config/appConfig';

const NavLogo = () => {
  const configContext = useContext(ConfigContext);
  const { collapseMenu } = configContext.state;
  const { dispatch } = configContext;

  //   const [user, setUser] = useState({});
  //   const baseURL = 'http://127.0.0.1:8000/api';

  //   const token = getTokenWithExpiration('token');

  //   useEffect(() => {
  //     fetchData();
  //   }, []);

  //   const fetchData = async () => {
  //     axios.defaults.headers.common['Authorization'] = `Bearer ${token}`;
  //     await axios.get(`${baseURL}/get/user`).then((response) => {
  //       setUser(response.data);
  //     });
  //   };

  let toggleClass = ['mobile-menu'];
  if (collapseMenu) {
    toggleClass = [...toggleClass, 'on'];
  }

  return (
    <React.Fragment>
      <div className="navbar-brand header-logo">
        <Link to="#" className="b-brand">
          <div className="b-bg">
            <i className="feather icon-trending-up" />
            {/* <img src={appConfig.baseURL + '/storage/images/' + user.avatar} className="img-radius" alt="User Profile" width={50} /> */}
          </div>
          <span className="b-title">
            Exam App <sup>V 1.0</sup>
          </span>
          {/* <span className="b-title">{user.name}</span> */}
        </Link>
        <Link to="#" className={toggleClass.join(' ')} id="mobile-collapse" onClick={() => dispatch({ type: actionType.COLLAPSE_MENU })}>
          <span />
        </Link>
      </div>
    </React.Fragment>
  );
};

export default NavLogo;
