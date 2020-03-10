const initialState = {
  input: '',
  category: 'All Products'
}

const FILTER_INPUT = 'FILTER_INPUT' 
const FILTER_CATEGORY = 'FILTER_CATEGORY'

export function filterInput(input) {
  return {
    type: FILTER_INPUT,
    payload: input
  }
}

export function filterCategory(category) {
  return {
    type: FILTER_CATEGORY,
    payload: category
  }
}

export default function searchReducer(state = initialState, action) {
  const {type, payload} = action
  
  switch(type) {
    case FILTER_INPUT:
      return {...state, input: payload}
    case FILTER_CATEGORY:
      return {...state, category: payload}
    default:
      return state
  }
}