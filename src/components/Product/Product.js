import React, { useState, useEffect } from 'react'
import {withRouter} from 'react-router-dom'
import {connect} from 'react-redux'
import axios from 'axios'
import { toast } from 'react-toastify'
import './Product.scss'

const Product = props => {
  const [product, setProduct] = useState({})
  
  useEffect(() => {
    const {product_id} = props.match.params
    axios.get(`/api/products/${product_id}`).then(product => {
      setProduct(product.data)
      axios.post('/api/history', {user_id: props.user_id, product_id})
    })
  }, [])

  const addToCart = productID => {
    axios.post('/api/cart', {product_id: productID}).then(product => {
      toast.success('Product added to cart')
    })
  }
  
  const {product_id, name, price, img, product_desc} = product
  
  return (
    <div className='product'>
      <div>
        <h2>{name}</h2>
        <img src={img} />
        <div className='product-purchase'>
          <h3 className='product-price'>${price}</h3>
          <button onClick={() => addToCart(product_id)}>Add to Cart</button>
        </div>
      </div>
      <div className='product-desc'>
        <h3>Description:</h3>
        {product_desc}
      </div>
    </div>
  )
}

const mapStateToProps = reduxState => {
  const {user_id} = reduxState.userReducer
  return {user_id}
}

export default withRouter(connect(mapStateToProps)(Product))