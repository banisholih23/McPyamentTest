const initialState = {
  isLoading: false,
  isError: false,
  errorMsg: '',
  token: null,
  dataLogin: []
}

const login = (state=initialState, action) => {
  switch(action.type){
    case 'LOGIN_PENDING': {
      return {
        ...state,
        isLoading: true,
        isError: false
      }
    }
    case 'LOGIN_REJECTED': {
      return {
        ...state,
        isLoading: false,
        isError: true,
        errorMsg: action.payload.response.data.message,
      }
    }
    case 'LOGIN_FULFILLED': {
      return {
        ...state,
        isLoading: false,
        isError: false,
        token: action.payload.data.token,
        dataLogin: action.payload.data
      }
    }
    case 'LOGOUT': {
      return {
        ...state,
        isLoading: false,
        isError: false,
        token: null
      }
    }
    default: {
      return {
        ...state
      }
    }
  }
}

export default login