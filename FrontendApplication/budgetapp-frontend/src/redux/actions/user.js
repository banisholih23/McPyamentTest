import qs from 'querystring'
import axios from '../../services/Axios'
const {REACT_APP_URL} = process.env

const register = (name, email, password)=>{
  return {
    type: 'LOGOUT',
    payload: axios().post(`${REACT_APP_URL}register`, qs.stringify({name, email, password}))
  }
}

const loginUser = (email, password)=>{
  return {
    type: 'LOGIN',
    payload: axios().post(`${REACT_APP_URL}login`, qs.stringify({email, password}))
  }
}

const logoutAuth = ()=>{
  return {
    type: 'LOGOUT',
    payload: ''
  }
}

export {register, loginUser, logoutAuth}
