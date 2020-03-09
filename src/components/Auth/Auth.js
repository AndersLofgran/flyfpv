import React, {useState} from 'react'
import {connect} from 'react-redux'
import {login_logout} from '../../redux/userReducer'
import axios from 'axios'
import './Auth.scss'

const Auth = props => {
  const [value, setValue] = useState({
    email: '',
    password: ''
  })

  const register = () => {
    axios.post('/auth/register', {email: value.email, password: value.password}).then(res => {
      const {user_id, email} = res.data
      props.history.push('/landing')
      props.login_logout(user_id, email)
    })
  }

  const login = () => {
    axios.post('/auth/login', {email: value.email, password: value.password}).then(res => {
      const {user_id, email} = res.data
      props.history.push('/landing')
      props.login_logout(user_id, email)
    })
  }

  return (
    <>
      <div className='auth-header' >
        <div className='auth-header-title' >
          <h1>flyFPV</h1>
          <img />
        </div>
      </div>

      <div className='auth-container' >
        <div className='auth' >
          <div className='auth-title' >
            <h2>Sign In</h2>
          </div>
          <div className='auth-inputs' >
            <h3>Email</h3>
            <input  type='text'
                    onChange={ev => setValue({...value, email: ev.target.value})} />
            <h3>Password</h3>
            <input  type='text'
                    onChange={ev => setValue({...value, password: ev.target.value})} />
          </div>
          <button onClick={login} >Login</button>
          <button onClick={register} >Register</button>
        </div>
      </div>
    </>
  )
}

export default connect(null, {login_logout})(Auth)