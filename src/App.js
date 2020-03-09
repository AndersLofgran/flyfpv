import React from 'react';
import Header from './components/Header/Header'
import Footer from './components/Footer/Footer'
import routes from './routes'
import {withRouter} from 'react-router-dom'
import './App.scss';

class App extends React.Component {  
  render() {
    return (
      <div className='App' >
        {this.props.location.pathname === '/'
          ?
            <>
              {routes}
            </>
          :
            <>
              <Header />
              {routes}
              <Footer />
            </>
        }
      </div>
    )
  }
}

export default withRouter(App);
