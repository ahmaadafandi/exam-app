import Loading from 'components/Loader/Loading';
import React, { useEffect, useState } from 'react';
import { Row, Col, Card, Table } from 'react-bootstrap';

const BootstrapTable = () => {
  const [loading, setLoading] = useState(true);

  useEffect(() => {
    // Simulate a data fetch
    const timer = setTimeout(() => {
      setLoading(false); // Stop loading after 2 seconds
    }, 3000);

    return () => clearTimeout(timer); // Cleanup the timer
  }, []);

  return (
    <React.Fragment>
      {loading ? (
        <div className="loading-container">
          <Loading />
        </div>
      ) : (
        <Row>
          <Col>
            <Card>
              <Card.Header>
                <Card.Title as="h5">Basic Table</Card.Title>
                <span className="d-block m-t-5">
                  use bootstrap <code>Table</code> component
                </span>
              </Card.Header>
              <Card.Body>
                <Table responsive>
                  <thead>
                    <tr>
                      <th>#</th>
                      <th>First Name</th>
                      <th>Last Name</th>
                      <th>Username</th>
                    </tr>
                  </thead>
                  <tbody>
                    <tr>
                      <th scope="row">1</th>
                      <td>Mark</td>
                      <td>Otto</td>
                      <td>@mdo</td>
                    </tr>
                    <tr>
                      <th scope="row">2</th>
                      <td>Jacob</td>
                      <td>Thornton</td>
                      <td>@fat</td>
                    </tr>
                    <tr>
                      <th scope="row">3</th>
                      <td>Larry</td>
                      <td>the Bird</td>
                      <td>@twitter</td>
                    </tr>
                  </tbody>
                </Table>
              </Card.Body>
            </Card>
            {/* Other cards remain the same */}
          </Col>
        </Row>
      )}
    </React.Fragment>
  );
};

export default BootstrapTable;
