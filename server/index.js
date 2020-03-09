require('dotenv').config()
const express = require('express')
const session = require('express-session')
const massive = require('massive')
const authCtrl = require('./controllers/authCtrl')
const productCtrl = require('./controllers/productCtrl')
const cartCtrl = require('./controllers/cartCtrl')
const historyCtrl = require('./controllers/historyCtrl')
const {SERVER_PORT, CONNECTION_STRING, SESSION_SECRET} = process.env

const app = express()
app.use(express.json())

app.use(
  session({
    resave: false,
    saveUninitialized: true,
    rejectUnauthorized: false,
    cookie: {maxAge: 1000 * 60 * 60 * 24 * 7},
    secret: SESSION_SECRET
  })
)

massive({
  connectionString: CONNECTION_STRING,
  ssl: {rejectUnauthorized: false}
}).then(db => {
  app.set('db', db)
  console.log('DB connected')
  app.listen(SERVER_PORT, () => console.log(`Server running on ${SERVER_PORT}`))
})


// AUTH ENDPOINTS
app.post('/auth/register', authCtrl.register)
app.post('/auth/login', authCtrl.login)
app.post('/auth/logout', authCtrl.logout)
app.get('/auth/user', authCtrl.currentUser)

// PRODUCT ENDPOINTS
app.get('/api/products', productCtrl.getAll)
// app.get('/api/products', productCtrl.getById)

// CART ENDPOINTS
app.get('/api/cart', cartCtrl.get)
app.post('/api/cart', cartCtrl.add)
app.put('/api/cart', cartCtrl.update)
app.delete('/api/cart/:product_id', cartCtrl.delete)

// HISTORY ENDPOINTS
