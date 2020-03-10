module.exports = {

  get: async (req, res) => {
    const {user_id} = req.params
    const db = req.app.get('db')

    let history = await db.get_history([user_id])

    return res.status(200).send(history)
  },

  add: async (req, res) => {
    const {user_id, product_id} = req.body
    const db = req.app.get('db')

    let lastItem = await db.get_history([user_id])
    if(lastItem[0] && lastItem[lastItem.length - 1].product_id === +product_id) {
      return res.sendStatus(200)
    }

    await db.add_history([user_id, product_id])

    return res.sendStatus(200)
  }
  
}