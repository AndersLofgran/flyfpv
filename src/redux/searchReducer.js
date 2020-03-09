const initialState = {
  productName: '',
  category: ''
}

const FILTER_CATEGORY = 'FILTER_CATEGORY'

export function filterCategory(category) {
  return {
    type: FILTER_CATEGORY,
    payload: category
  }
}

export default function searchReducer(state = initialState, action) {
  const {type, payload} = action
  
  switch(type) {
    case FILTER_CATEGORY:
      return {...state, category: payload}
    default:
      return state
  }
}