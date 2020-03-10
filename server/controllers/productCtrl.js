module.exports = {

  getAll: async (req, res) => {
    const db = req.app.get('db')

    let products = await db.get_all_products()
    
    res.status(200).send(products)
  },

  getById: async (req, res) => {
    const {product_id} = req.params
    const db = req.app.get('db')

    let product = await db.get_by_product_id([product_id])

    return res.status(200).send(product[0])
  }
  
}