import React from 'react';
import Auth from './components/Auth/Auth'
import Header from './components/Header/Header'
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
              <Auth />
            </>
          :
            <>
              <Header />
              {routes}
            </>
        }
      </div>
    )
  }
}

export default withRouter(App);
