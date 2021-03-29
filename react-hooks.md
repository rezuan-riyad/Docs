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

**code example: useState with arrays of objects**
```JSX
import React, { useState } from 'react'

function App() {
  const [book, setBook] = useState({ author:"", bookName:"", price: "" })
  const [bookList, setBookList] = useState([])

  const handleChange = (e) => {
    setBook({
      ...book,
      [e.target.name]: e.target.value
    })
  }

  const addBook = (e) => {
    e.preventDefault()
    setBookList([
      ...bookList,
      book
    ])
  }
  return (
    <div className="container">
      <div className="addSection">

        <form onSubmit={addBook}>
          <input 
          type="text"
          name="author"
          value={book.author}
          placeholder="Author"
          onChange={handleChange}
          />

          <input 
          type="text"
          name="bookName"
          value={book.bookName}
          placeholder="Book Name"
          onChange={handleChange}
          />

          <input 
          type="number"
          name="price"
          value={book.price}
          placeholder="Price"
          onChange={handleChange}
          />

          <button>Add To Showcase</button>
        </form>

        <div className="currentBook">
          <p>Author: {book.author}</p>
          <p>Book Name: {book.bookName}</p>
          <p>Price: {book.price } { book.price !== "" ? "Tk." : null}</p>
        </div>

      </div>
      <div className="showCase">
        {
          bookList.map((book, i) => {
            return(
              <div key={i}>
                <hr />
                <p>Author: {book.author}</p>
                <p>Author: {book.bookName}</p>
                <p>Author: {book.price}</p>
              </div>
            )
          })
        }
      </div>
    </div>
  );
}

export default App;
```
