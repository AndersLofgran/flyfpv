require('dotenv').config()
const nodemailer = require('nodemailer')

const {PASSWORD} = process.env

const sendEmail = (req, res) => {
  const {email, order} = req.body

  let transporter = nodemailer.createTransport({
    service: 'gmail',
    auth: {
        user: 'anders.lofgran.dev@gmail.com',
        pass: PASSWORD
    }
  })

  let orderItems = order.map(item => `\n\nProduct: ${item.name} \nPrice: $${item.price * item.quantity} (${item.quantity} x $${item.price})`)

  let emailText = `Thanks for your purchase! \nHere are your order details: ${orderItems}`
  let mailOptions = {
    from: 'anders.lofgran@gmail.com',
    to: email,
    subject: 'Recent order from flyFPV',
    text: emailText
  }

  transporter.sendMail(mailOptions, (err, data) => {
    if(err){
      return res.status(409).send('Error Occurred')
    } else {
      return res.status(200).send('Message Sent!')
    }

  })
}

module.exports = {
  sendEmail
}