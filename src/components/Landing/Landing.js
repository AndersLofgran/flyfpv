import React, {useState, useEffect} from 'react'
import {withRouter, Link} from 'react-router-dom'
import {connect} from 'react-redux'
import axios from 'axios'
import './Landing.scss'

const Landing = props => {
  const [products, setProducts] = useState([])

  useEffect(() => {
    axios.get('/api/products').then(products => {
      if(props.input) {
        setProducts(products.data.filter(product => product.name.toLowerCase().includes(props.input.toLowerCase())))
      }
      else if(props.category !== 'All Products') {
        setProducts(products.data.filter(product => product.category === props.category))
      }
      else {
        setProducts(products.data)
      }
    })
  }, [props.input, props.category])

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
                <Link className='product-info' to={`/product/${product_id}`}> <i>{name}</i> </Link>
              </div>

              <div className='button-price'>
                <div className='product-info'> $<b>{price}</b> </div>
                <button onClick={() => addToCart(product_id)}>Add to Cart</button>
              </div>
            </div>
  })
  
  return (
    <div className='landing' >
      <h1 className='landing-category'> {props.category} </h1>
      {productList}
    </div>
  )
}

const mapStateToProps = reduxState => {
  const {input, category} = reduxState.searchReducer
  return {input, category}
}

export default connect(mapStateToProps)(withRouter(Landing))