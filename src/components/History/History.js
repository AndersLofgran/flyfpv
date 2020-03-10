import React, {useState, useEffect} from 'react'
import {Link} from 'react-router-dom'
import {connect} from 'react-redux'
import axios from 'axios'
import dodoHistory from '../../assets/dodo_history.png'
import './History.scss'


const History = props => {
  const [history, setHistory] = useState([])

  useEffect(() => {
    const {user_id} = props
    axios.get(`/api/history/${user_id}`).then(history => {
      setHistory(history.data)
    }).catch(() => setHistory([]))
  }, [])
  
  const historyList = history.map((item, i) => {
    return  <Link to={`/product/${item.product_id}`}>
              <div className='history-item'>
                <div>{i + 1}</div>
                <img src={item.img} />
                {item.name}
                {item.category}
                {item.price}
              </div>
            </Link>
  }).reverse()
  

  return (
    <div className='history'>
      {history[0]
        ?
          <div> {historyList} </div>
        :
          <div className='history-empty' >
            <h2> You have no history.<br></br>Go peep some products. </h2>
            <img src={dodoHistory} />
          </div>
      }
    </div>
  )
}

const mapStateToProps = reduxState => {
  const {user_id} = reduxState.userReducer
  return {user_id}
}

export default connect(mapStateToProps)(History)
