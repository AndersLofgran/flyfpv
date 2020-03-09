import React, {useState, useEffect} from 'react'
import {withRouter} from 'react-router-dom'
import {connect} from 'react-redux'
import axios from 'axios'
import './Landing.scss'

const Landing = props => {
  const [products, setProducts] = useState([])
  
  useEffect(() => {
    axios.get('/api/products').then(products => {
      if(props.category !== '') {
        setProducts(products.data.filter(product => product.category === props.category))
      } else {
        setProducts(products.data)
      }
    })
  }, [props.category])

  const addToCart = productID => {
    axios.post('/api/cart', {product_id: productID}).then(product => {
      // alert(`${product.data.name} added to cart`)
    })
  }

  const productList = products.map(product => {
    const {product_id, name, price, img} = product
    return  <div className='landing-product'>
              <div>
                <img src={img} />
                <div className='product-info'> <i>{name}</i> </div>
              </div>

              <div className='button-price'>
                <div className='product-info'> $<b>{price}</b> </div>
                <button onClick={() => addToCart(product_id)} > Add to Cart</button>
              </div>
            </div>
  })
  
  return (
    <div className='landing' >
      {productList}
    </div>
  )
}

const mapStateToProps = reduxState => {
  const {category} = reduxState.searchReducer
  return {category}
}

export default connect(mapStateToProps)(withRouter(Landing))