### MongoDB connection locally
```javascript
const mongoose = require('mongoose')

mongoose.connect('mongodb://localhost/mydb')
mongoose.connection.once('open', function(){
    console.log('Connection successfully made to mongoDB local')
}).on('error', function(error){
    console.log('Connection Error:', error)
})
```
