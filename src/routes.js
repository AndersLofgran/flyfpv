import React from 'react'
import {Switch, Route} from 'react-router-dom'
import Auth from './components/Auth/Auth'
import Landing from './components/Landing/Landing'
import Cart from './components/Cart/Cart'
import History from './components/History/History'
import Product from './components/Product/Product'

export default (
  <Switch>
    <Route exact path='/' component={Auth} />
    <Route path='/landing' component={Landing} />
    <Route path='/product' component={Product} />
    <Route path='/cart' component={Cart} />
    <Route path='/history' component={History} />
  </Switch>
)