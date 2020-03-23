import React from 'react';
import Nav from './components/Nav/Nav'
import Footer from './components/Footer/Footer'
import routes from './routes'
import {withRouter} from 'react-router-dom'
import {toast} from 'react-toastify'
import 'react-toastify/dist/ReactToastify.css'
import './App.scss';

toast.configure({
  autoClose: 3000,
  draggable: false
})

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
              <Nav />
              {routes}
              <Footer />
            </>
        }
      </div>
    )
  }
}

export default withRouter(App);
