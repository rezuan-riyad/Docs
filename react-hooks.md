## useState

**code example: useState with objects**
```JSX
import React, { useState } from 'react'

function App() {

  const [value, setValue] = useState({ fname:"", lname:"" })
  
  return (
    <div className="container">
      <input 
      type="text" 
      name="fname"
      value={value.fname}
      placeholder="First Name"
      onChange={ (e)=> { setValue({...value, [e.target.name]: e.target.value })}}
      />
      <input 
      type="text" 
      name="lname"
      value={value.lname}
      placeholder="Last Name"
      onChange={ (e)=> { setValue({...value, [e.target.name]: e.target.value })}}/>     
      <p>Input Value: {value.fname}</p>
      <p>Input Value: {value.lname}</p>
    </div>
  );
}
export default App;
```
**code example: useState with array**
```JSX
import React, { useState } from 'react'

function App() {

  const [userList, setUserList] = useState([]) 
  const [user, setUser] = useState('')

  const addUser = () => {
    console.log(user)
    setUserList([ ...userList, user])
    setUser('')
  }

  return (
    <div className="container">
      <input 
      type="text"
      value={user}
      onChange={(e) => setUser(e.target.value)}/> 
      <button onClick={addUser}>Add</button>
      <p>Current User: {user}</p>
      {
        userList.map( (user, i) => {
          return <p key={i}>{user}</p>
        })
      }
    </div>
  );
}

export default App;
```
