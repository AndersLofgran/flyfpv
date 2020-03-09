const bcrypt = require('bcryptjs')


module.exports = {

  register: async (req, res) => {
    const {email, password} = req.body
    const db = req.app.get('db')

    let user = await db.check_user([email])
    user = user[0]
    if(user) {
      return res.status(400).send(console.log('Email already exists'))
    }

    let salt = bcrypt.genSaltSync(10)
    let hash = bcrypt.hashSync(password, salt)

    let newUser = await db.register_user([email, hash])
    newUser = newUser[0]
    req.session.user = newUser
    req.session.user['cart'] = []

    console.log(req.session.user)
    console.log(`--- ${email} registered ---`)
    return res.status(200).send(req.session.user)
  },
  
  login: async (req, res) => {
    const {email, password} = req.body
    const db = req.app.get('db')

    let user = await db.check_user([email])
    user = user[0]
    if(!user) {
      return res.status(400).send(console.log('Email not found/registered'))
    }

    const authenticated = bcrypt.compareSync(password, user.password)
    if(authenticated) {
      delete user.password
      req.session.user = user
      req.session.user.cart = []
      
      console.log(`--- ${email} logged in ---`)
      return res.status(200).send(req.session.user)
    } else {
      return res.status(401).send(console.log('Incorrect password'))
    }
  },

  logout: (req, res) => {
    console.log(`--- user logged out ---`)
    req.session.destroy()
    return res.sendStatus(200)
  },

  currentUser: (req, res) => {
    return res.status(200).send(req.session.user)
  }
  
}