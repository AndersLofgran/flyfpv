import React, {useState, useEffect} from 'react'
import {connect} from 'react-redux'
import {login_logout} from '../../redux/userReducer'
import axios from 'axios'
import ReactPlayer from 'react-player'
import './Auth.scss'

const Auth = props => {
  const youtubeURL = [
    'https://www.youtube.com/watch?v=WNUX_iPsPsI&t?t=30',
    'https://www.youtube.com/watch?v=kmDotWUzHIg?t=30',
    'https://www.youtube.com/watch?v=5aqTL6V6JIM&t?t=30',
    'https://www.youtube.com/watch?v=bUSq4WNc8PQ&t?t=30',
    'https://www.youtube.com/watch?v=2aU6O-hbhmI&t?t=30',
    'https://www.youtube.com/watch?v=qnFpcyBpl80&t?t=30',
    'https://www.youtube.com/watch?v=odPdiP93e2w?t=30',
  ]
  const [rndNum, setRndNum] = useState(0)
  const [value, setValue] = useState({
    email: '',
    password: ''
  })

  useEffect(() => {
    setRndNum(Math.floor(Math.random() * youtubeURL.length))
  }, [])

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
        <h1>flyFPV</h1>
        <img />
      </div>

      <div className='auth-container' >
        <ReactPlayer  url={youtubeURL[rndNum]}
                      height='1080px'
                      width='1920px'
                      playing='true'
                      loop='true'
                      volume='1'
                      muted='true'
                      controls='false'
        />
        <div className='auth' >
          <div className='auth-title'>
            <h2>Sign In</h2>
          </div>
          <div className='auth-inputs' >
            <h3>Email</h3>
            <input  type='text'
                    onChange={ev => setValue({...value, email: ev.target.value})} />
            <h3>Password</h3>
            <input  type='password'
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