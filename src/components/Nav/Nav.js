import React, {useState, useEffect} from 'react'
import {Link} from 'react-router-dom'
import {connect} from 'react-redux'
import {filterCategory} from '../../redux/searchReducer'
import {login_logout} from '../../redux/userReducer'
import menuIcon from  '../../assets/menu_icon.png'
import searchIcon from '../../assets/search_icon.png'
import historyIcon from '../../assets/history_icon.png'
import cartIcon from '../../assets/cart_icon.png'
import axios from 'axios'
import './Nav.scss'


const Nav = props => {
  const [toggleMenu, setToggleMenu] = useState(false)
  const [toggleSearch, setToggleSearch] = useState(false)
  const [toggleCategories, setToggleCategories] = useState(false)

  useEffect(() => {
    axios.get('/auth/user').then(user => {
      const {user_id, email} = user.data
      props.login_logout(user_id, email)
    })
  }, [])

  const logout = () => {
    props.login_logout('', '')
    props.filterCategory('')
    axios.post('/auth/logout')
  }

  const filterByCategory = category => {
    props.filterCategory(category)
    setToggleMenu(false)
  }
  
  const showMenuDropdown = () => {
    setToggleMenu(!toggleMenu)
    setToggleSearch(false)
    setToggleCategories(false)
  }

  const showSearchDropdown = () => {
    setToggleSearch(!toggleSearch)
    setToggleMenu(false)
    setToggleCategories(false)
  }

  const showCategories = () => {
    setToggleCategories(!toggleCategories)
  }

  const closeDropdowns = () => {
    setToggleMenu(false)
    setToggleSearch(false)
    setToggleCategories(false)
  }

  
  return (
    <>
    <div className='nav' >
      <img onClick={showMenuDropdown} src={menuIcon}/>
      <img onClick={showSearchDropdown} src={searchIcon}/>
      <Link className='noSelect' to='/history' > <img onClick={closeDropdowns} src={historyIcon}/> </Link>
      <Link className='noSelect' to='/cart' > <img onClick={closeDropdowns} src={cartIcon}/> </Link>
    </div>

    {toggleMenu &&
      <div className='menu-dropdown'>
        <div>
          {props.email
            ?
              <div className='menu-dropdown-auth'>
                <h3>Logged in: {props.email} </h3>
                <Link to='/'> <h3 onClick={() => {
                  props.login_logout('', '')
                  logout()
                  }}>Logout</h3> </Link>
              </div>
            :
              <div className='menu-dropdown-auth'>
                <Link to='/'> <h3>Login</h3> </Link>
                <Link to='/'> <h3 onClick={() => {
                  props.login_logout('', '')
                  logout()
                  }}>Logout</h3> </Link>
              </div>
          }
        </div>
        <div className='menu-dropdown-navigation'>
          <Link to='/landing'> <h3 onClick={() => {
              setToggleMenu(false)
              props.filterCategory('')
            }} >All Products</h3> </Link>
          <h3 onClick={showCategories}> Categories </h3>
            {toggleCategories &&
                  <div className='categories' >
                    <Link to='/landing' className='category-item' onClick={ev => filterByCategory(ev.target.innerText)}>Antennas</Link>
                    <Link to='/landing' className='category-item' onClick={ev => filterByCategory(ev.target.innerText)}>Batteries & Chargers</Link>
                    <Link to='/landing' className='category-item' onClick={ev => filterByCategory(ev.target.innerText)}></Link>
                  </div>
            }
        </div>
      </div>
    }

    {toggleSearch &&
      <div className='search-dropdown' >
        <input className='search-bar' />
        <Link to='/landing' >
          <img onClick={showSearchDropdown} src={searchIcon}/>
        </Link>
      </div>
    }
    </>
  )
}

const mapStateToProps = reduxState => {
  const {email} = reduxState.userReducer
  return { email }
}

export default connect(mapStateToProps, {filterCategory, login_logout})(Nav)