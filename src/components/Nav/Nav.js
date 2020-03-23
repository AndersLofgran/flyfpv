import React, {useState, useEffect} from 'react'
import {Link} from 'react-router-dom'
import {connect} from 'react-redux'
import {filterInput, filterCategory} from '../../redux/searchReducer'
import {login_logout} from '../../redux/userReducer'
import menuIcon from  '../../assets/menu_icon.png'
import searchIcon from '../../assets/search_icon.png'
import historyIcon from '../../assets/history_icon.png'
import cartIcon from '../../assets/cart_icon.png'
import flyLogo from '../../assets/fly_logo.png'
import axios from 'axios'
import './Nav.scss'


const Nav = props => {
  const [menuDropdown, setMenuDropdown] = useState('closed')
  const [searchDropdown, setSearchDropdown] = useState('closed')
  const [categories, setCategories] = useState('closed')

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
    closeDropdowns()
  }

  const toggleMenuDropdown = () => {
    setMenuDropdown(menuDropdown === 'closed' ? 'open' : 'closed')
    setSearchDropdown('closed')
  }

  const toggleSearchDropdown = () => {
    setSearchDropdown(searchDropdown === 'closed' ? 'open' : 'closed')
    setMenuDropdown('closed')
  }

  const toggleCategories = () => {
    setCategories(categories === 'closed' ? 'open' : 'closed')
  }

  const closeDropdowns = () => {
    setMenuDropdown('closed')
    setSearchDropdown('closed')
  }


  return (
    <>
    <div className='nav'>
      <div className='header mobile'>
        <h1>flyFPV</h1>
        <img src={flyLogo} className='fly-logo' />
      </div>

      <div className='nav-links mobile'>
        <img onClick={toggleMenuDropdown} src={menuIcon}/>
        <img onClick={toggleSearchDropdown} src={searchIcon}/>
        <Link to='/history' > <img onClick={closeDropdowns} src={historyIcon}/> </Link>
        <Link to='/cart' > <img onClick={closeDropdowns} src={cartIcon}/> </Link>
      </div>

      <div className='nav-links not-mobile'>
        <div className='header'>
          <h1>flyFPV</h1>
          <img src={flyLogo} className='fly-logo'/>
          <input  className='search-bar'
                  placeholder='Search products'
                  onChange={ev => {
            props.filterCategory(`Search Results for: '${ev.target.value}'`)
            props.filterInput(ev.target.value)
          }} />
          <img src={searchIcon}/>
        </div>

        <div className='flex-this'>
          <div onClick={toggleMenuDropdown} className='flex-this'>
            <p>Menu</p>
            <img src={menuIcon}/>
          </div>
          <p>|</p>
          <Link to='/history' className='flex-this' onClick={closeDropdowns}>
            <p>History</p>
            <img src={historyIcon}/>
          </Link>
          <p>|</p>
          <Link to='/cart' className='flex-this' onClick={closeDropdowns}>
            <p>Cart</p>
            <img src={cartIcon}/>
          </Link>
        </div>

      </div>
    </div>

      <div className={`search-dropdown-${searchDropdown}`}>
        <input  className='search-bar'
                placeholder='Search products'
                onChange={ev => {
          props.filterCategory(`Search Results for: '${ev.target.value}'`)
          props.filterInput(ev.target.value)
        }} />
        <Link to='/landing' >
          <img onClick={toggleSearchDropdown} src={searchIcon}/>
        </Link>
      </div>

      <div className={`menu-dropdown-${menuDropdown}`}>
        <div>
          {props.email
            ?
              <div className='menu-dropdown-auth'>
                <h3>Logged in: <br/> {props.email} </h3>
                <Link to='/'> <h3 onClick={() => {
                  props.login_logout('', '')
                  logout()
                  }}>Logout</h3>
                </Link>
              </div>
            :
              <div className='menu-dropdown-auth'>
                <Link to='/'> <h3>Login</h3> </Link>
                <Link to='/'> <h3 onClick={() => {
                  props.login_logout('', '')
                  logout()
                  }}>Logout</h3>
                </Link>
              </div>
          }
        </div>
        <div className='menu-dropdown-navigation'>
          <Link to='/landing'> <h3 onClick={() => {
              setMenuDropdown('closed')
              props.filterInput('')
              props.filterCategory('All Products')
            }} >All Products</h3>
          </Link>
          <Link> <h3 onClick={toggleCategories}> Categories </h3> </Link>
            <div className={`categories-${categories}`} >
              <Link to='/landing' className='category-item' onClick={ev => filterByCategory(ev.target.innerText)}>Antennas</Link>
              <Link to='/landing' className='category-item' onClick={ev => filterByCategory(ev.target.innerText)}>Batteries & Chargers</Link>
              <Link to='/landing' className='category-item' onClick={ev => filterByCategory(ev.target.innerText)}>Cameras</Link>
              <Link to='/landing' className='category-item' onClick={ev => filterByCategory(ev.target.innerText)}>ESC's</Link>
              <Link to='/landing' className='category-item' onClick={ev => filterByCategory(ev.target.innerText)}>Flight Controllers</Link>
              <Link to='/landing' className='category-item' onClick={ev => filterByCategory(ev.target.innerText)}>Flight Stacks</Link>
              <Link to='/landing' className='category-item' onClick={ev => filterByCategory(ev.target.innerText)}>Frames</Link>
              <Link to='/landing' className='category-item' onClick={ev => filterByCategory(ev.target.innerText)}>FPV Goggles</Link>
            </div>
        </div>
      </div>
    </>
  )
}

const mapStateToProps = reduxState => {
  const {email} = reduxState.userReducer
  return { email }
}

export default connect(mapStateToProps, {filterInput, filterCategory, login_logout})(Nav)