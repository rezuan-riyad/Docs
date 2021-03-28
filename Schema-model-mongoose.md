## Mongoose, Schema, Model
### Mongoose
Mongoose is an Object Data Modeling (ODM) library for MongoDB and Node.js. It manages relationships between data, 
provides schema validation, and is used to translate between objects in code and the representation of those objects in MongoDB.
### Schema
MongoDB is a *schema-less* NoSQL document database. It means you can store JSON documents in it, and the structure of these documents can vary as it is not enforced like SQL databases. This is one of the advantages of using NoSQL as it speeds up application development and reduces the complexity of deployments.</br></br>While Mongo is schema-less, SQL defines a schema via the table definition. A Mongoose ‘schema’ is a document data structure (or shape of the document) that is enforced via the application layer.
### Model
‘Models’ are higher-order constructors that take a schema and create an instance of a document equivalent to records in a relational database.
```javascript
const mongoose = require('mongoose')
const Schema = mongoose.Schema

// create schema
const ItemSchema = new Schema({
 name: {
  type: String,
  required: true
 },
 date: {
  type: Date
  default: Date.now
 }

// create model
const Item = mongoose.model('item', ItemSchema)
module.exports = Item
})
```
