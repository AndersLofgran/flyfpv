import React from 'react'
import Nav from '../Nav/Nav'
import './Header.scss'

export default function Header() {
  return (
      <div>
        <div className='header-mobile' >
          <div className='header-title' >
            <h1>flyFPV</h1>
            <img />
          </div>
        </div>
        <Nav />
      </div>
  )
}