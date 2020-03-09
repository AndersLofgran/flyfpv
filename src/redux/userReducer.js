const initialState = {
  user_id: '',
  email: '',
}

const LOGIN_LOGOUT = 'LOGIN_LOGOUT'

export function login_logout(user_id, email) {
  return {
    type: LOGIN_LOGOUT,
    payload: {user_id, email}
  }
}

export default function userReducer(state = initialState, action) {
  const {type, payload} = action

  switch(type) {
    case LOGIN_LOGOUT:
      return {...state, user_id: payload.user_id, email: payload.email}
    default:
      return state
  }
}