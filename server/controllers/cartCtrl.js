module.exports = {
  
  get: (req, res) => {
    return res.status(200).send(req.session.user)
  },

  add: async (req, res) => {
    const {product_id} = req.body
    const {cart} = req.session.user
    const db = req.app.get('db')
    
    let productToAdd = await db.add_to_cart([product_id])
    productToAdd = productToAdd[0]

    let duplicate = cart.find(product => product.product_id === +productToAdd.product_id)
    
    if(duplicate) {
      cart.find(product => product.product_id === +duplicate.product_id).quantity += 1
      return res.status(200).send(console.log('duplicate product added to cart'))
    } else {
      productToAdd.quantity = 1
      req.session.user.cart.push(productToAdd)
      return res.status(200).send(productToAdd)
    }
  },

  update: (req, res) => {
    const {product_id, val} = req.body
    const {cart} = req.session.user

    cart.find(product => product.product_id === +product_id).quantity = +val

    return res.status(200).send(cart)
  },

  delete: (req, res) => {
    const {product_id} = req.params
    let {cart} = req.session.user
    
    if(+product_id === -1) {
      cart = []
      return res.status(200).send(cart)
    }
    
    for(let i = 0; i < cart.length; i++) {
      if(cart[i].product_id === +product_id) {
        cart.splice(i, 1)
      }
    }
    return res.status(200).send(cart)
  }

}