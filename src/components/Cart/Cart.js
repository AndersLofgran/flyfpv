import React, {useState, useEffect} from 'react'
import axios from 'axios'
import sadCart from '../../assets/sad_cart.jpg'
import deleteIcon from '../../assets/delete_icon.png'
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
      setCart(cart.data)
    })
  }

  const deleteProduct = product_id => {
    axios.delete(`/api/cart/${product_id}`).then(cart => {
      setCart(cart.data)
    })
  }
  
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
            {cartItems}
            <div>
              <div>Total: ${cartPriceTotal.toFixed(2)}</div>
              <button onClick={() => deleteProduct(-1)} >Clear Cart</button>
              <button>Submit Order</button>
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

export default Cart