module.exports = {

  getAll: async (req, res) => {
    const db = req.app.get('db')

    let products = await db.get_all_products()
    
    res.status(200).send(products)
    // returns array of product objects
  }
  
}