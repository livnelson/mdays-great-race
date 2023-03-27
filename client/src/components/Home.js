import { useState, useEffect } from "react"
import Rules from './Rules'
import Stats from "./Stats"
import { FontAwesomeIcon } from '@fortawesome/react-fontawesome'
import { faRankingStar } from '@fortawesome/free-solid-svg-icons'
import { faRightFromBracket } from '@fortawesome/free-solid-svg-icons'
import { faScaleBalanced } from '@fortawesome/free-solid-svg-icons'
import '../styles/Home.css'

function Home() {
  const [viewRules, setViewRules] = useState(false)
  const [viewStats, setViewStats] = useState(false)

  const stats = <FontAwesomeIcon icon={faRankingStar} />
  const logout = <FontAwesomeIcon icon={faRightFromBracket} />
  const rules = <FontAwesomeIcon icon={faScaleBalanced} />

  function handleRules() {
    setViewRules(!viewRules)
    console.log('rules clicked')
  }

  function handleStats() {
    setViewStats(!viewStats)
    console.log('stats clicked')
  }

  return (
    <div className='home-page'>
      <div className='home-body'>
        <div className='home-card'>
          <h1>Hello</h1>
          {viewStats ? <Stats /> : null}
          {viewRules ? <Rules /> : null}
        </div>
      </div>
    
      <div className='footer'>
      <div className='footer-buttons'>
        <button className='footer-button' onClick={handleStats}>{stats}</button>
        <button className='footer-button' onClick={handleRules}>{rules}</button>
        <button className='footer-button'>{logout}</button>
      </div>
    </div>
    </div>
  )
}

export default Home