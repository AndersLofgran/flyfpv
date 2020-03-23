import React, {useState, useEffect} from 'react'
import {connect} from 'react-redux'
import axios from 'axios'
import sadCart from '../../assets/sad_cart.jpg'
import deleteIcon from '../../assets/delete_icon.png'
import {toast} from 'react-toastify'
import 'react-toastify/dist/ReactToastify.css'
import './Cart.scss'


const Cart = props => {
  const [cart, setCart] = useState([])
  
  useEffect(() => {
    axios.get('/api/cart').then(userCart => {
      setCart(userCart.data)
    })
  }, [])

  const changeQuantity = (product_id, val) => {
    axios.put('/api/cart', {product_id, val}).then(cart => {
      toast.success('Item quantity updated')
      setCart(cart.data)
    })
  }

  const deleteProduct = product_id => {
    axios.delete(`/api/cart/${product_id}`).then(cart => {
      setCart(cart.data)
    })
  }

  const completePurchase = order => {
    axios.post('/mail', {email: props.email, order}).then(() => {
      toast.success('Order complete!')
      deleteProduct(-1)
    })
  }

  let order = cart.map(item => item)
  
  let cartPriceTotal = 0
  let cartItems = cart.map((item, i) => {
    cartPriceTotal += item.price * item.quantity
    return  <div key={i} className='cart-item' >
              <img src={item.img} />
              <div className='cart-item-info' >
                <div>{item.name}</div>
                <div className='price-quantity-container' >
                <div>${(item.price * item.quantity).toFixed(2)}</div>
                  <div className='quantity-container' >
                    <p>Qty:</p>
                    <input  className='quantity-input'
                            value={item.quantity}
                            onChange={ev => changeQuantity(item.product_id, ev.target.value)} />
                    <img  src={deleteIcon}
                          onClick={() => deleteProduct(item.product_id)} />
                  </div>
                </div>
              </div>
            </div>
  })

  return (
    <div className='cart' >
      {cart[0]
        ?
          <div>
            <div>
              <h1>Your Cart</h1>
              {cartItems}
              <div className='checkout'>
                <h3>Total: ${cartPriceTotal.toFixed(2)}</h3>
                <button onClick={() => deleteProduct(-1)} >Clear Cart</button>
                <button onClick={() => completePurchase(order)} >Complete Order</button>
              </div>
            </div>
  
            <div className='bonus-box'>
              <div className='bonus-item'>
                <div>
                  <svg>
                    <g transform="translate(1 1)" stroke-width="1.5" fill="none" fill-rule="evenodd">
                      <path d="M5 10H2M5 15H4" stroke="#fd870a" stroke-linecap="square"></path>
                      <path stroke="#ffffff" d="M16.829 16H22v-6l-4-2-1-4H9v12h2.171"></path>
                      <path d="M0 5h5" stroke="#fd870a" stroke-linecap="square"></path>
                      <path stroke="#ffffff" stroke-linecap="square" d="M0 0h9v4"></path>
                      <circle stroke="#ffffff" stroke-linecap="square" cx="14" cy="17" r="3"></circle>
                      <path stroke="#ffffff" stroke-linecap="square" d="M13 7v2h2"></path>
                    </g>
                  </svg>
                </div>
                <b>Same-Day Shipping</b>
                <p>For orders placed before 2PM EST, Mon-Fri</p>
              </div>
  
              <div className='bonus-item'>
                <div>
                  <svg>
                    <g stroke-width="1.5" fill="none" fill-rule="evenodd">
                      <path d="M6.5 3.25l12 6" stroke="#fd870a"></path>
                      <path stroke="#ffffff" d="M23 7l-10 5L1 6M13 12v11"></path>
                      <path stroke="#ffffff" stroke-linecap="square" d="M23 7v10l-10 6-12-6V6l10-5z"></path>
                    </g>
                  </svg>
                </div>
                <b>FREE Shipping!</b>
                <p>Free Shipping on domestic orders over $50.</p>
              </div>
  
              <div className='bonus-item'>
                <div>
                  <svg>
                    <g stroke-width="1.5" fill="none" fill-rule="evenodd" stroke-linecap="square">
                      <path d="M10 17H4c-1.7 0-3 1.3-3 3v3h12v-3c0-1.7-1.3-3-3-3zM7 14c-1.7 0-3-1.3-3-3v-1c0-1.7 1.3-3 3-3s3 1.3 3 3v1c0 1.7-1.3 3-3 3z" stroke="#ffffff"></path>
                      <path stroke="#fd870a" d="M13 1v10l4-3h6V1z"></path>
                    </g>
                  </svg>
                </div>
                <b>Top-notch support</b>
                <p>Need Help? Email us for personalized assistance!</p>
              </div>
  
              <div className='bonus-item'>
                <div>
                  <svg>
                    <g stroke-width="1.5" fill="none" fill-rule="evenodd">
                      <path d="M17 1c-2.1 0-3.9 1.1-5 2.7C10.9 2.1 9.1 1 7 1 3.7 1 1 3.7 1 7c0 6 11 15 11 15s11-9 11-15c0-3.3-2.7-6-6-6z" stroke="#ffffff" stroke-linecap="square"></path>
                      <path d="M16 5c1.65 0 3 1.35 3 3" stroke="#fd870a" stroke-linecap="round"></path>
                    </g>
                  </svg>
                </div>
                <b>Guaranteed Satisfaction</b>
                <p>We only sell products that we've tested, and love!</p>
              </div>
            </div>
          </div>
        :
          <div className='cart-empty' >
            <h2>
              Your cart is empty.<br></br>Go buy some stuff.
            </h2>
            <img src={sadCart} />
          </div>
    }
    </div>
  )
}

const mapStateToProps = reduxState => {
  const {email} = reduxState.userReducer
  return {email}
}

export default connect(mapStateToProps)(Cart)