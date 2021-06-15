# Mongo Shell
[Cheat Sheet By Traversy Media](https://gist.github.com/bradtraversy/f407d642bdc3b31681bc7e56d95485b6)
### Create Database
* To create a database, use the **use** command. If the database doesn’t exist, then the MongoDB cluster will create it.
```bash
> use mydb
switched to db mydb
```
* **show dbs** command will show all available databases
```bash
> show dbs
```
```
admin 0.000GB
local  0.000GB
```
### Insert Document
* Our newly created database is not seen here. We need to insert data. To add a document, 
we need to use **db.COLLECTION_NAME.insert** command.
```shell
> db.user.insert({name: "Jane Doe", age: 35})
WriteResult({ "nInserted" : 1 })
> db.user.insert({name: "John Doe", age: 35})
WriteResult({ "nInserted" : 1 })
```
* Now let's check **show dbs** command again.
```shell
> show dbs
```
```
admin   0.000GB
config  0.000GB
local   0.000GB
mydb    0.000GB
```
* To find out which database is the current one, enter the **db** command. When we entered the use command, then **mydb** became the current database.
```shell
> db
mydb
```
* To see all collections, use **show collections** command.
```shell
> show collections
user
```
### Find Documents
* To return all documents in a collection, use **db.COLLECTION_NAME.find()** command. In our case **db.user.find()** By default, MongoDB generates a unique [ObjectID](https://docs.mongodb.com/manual/reference/method/ObjectId/) identifier that is assigned to the **_id** field in a new document before writing that document to the database.
```shell
> db.user.find()
```
```
{ "_id" : ObjectId("605b73fcd8d8efdbc75db378"), "name" : "Jane Doe", "age" : 35 }
{ "_id" : ObjectId("605b78043f4b45f54e83f8ad"), "name" : "John Doe", "age" : 35 }
```

### Drop/Delete a Database
```shell
> db.dropDatabase()
{ "dropped" : "mydb", "ok" : 1 }
```
### Create Collections
```shell
> db.createCollection('posts')
{ "ok" : 1 }
```
### Insert Document
```shell
> db.posts.insert({
  title : "Post One",
  body : "Body of post one",
  category : "science",
  likes : 4,
  tags : ["news", "events"],
  user : {
    name : 'John Doe',
    status: 'author'
  },
  date: Date()
})
```
### Insert Multiple Documents
```shell
> db.posts.insertMany([
  {
    title : "Post Two",
    body : "This is Post Two Body. It is about politics. You will find it necessary.",
    category : "politics",
    likes : 10,
    tags : null,
    user : {
      name : 'Alen Smith',
      status: 'author'
    },
    date: Date()
  },
  {
    title : "Post Three",
    body : "This post is about religious duty. People don't care about it too much.",
    category : "religion",
    likes : 2,
    user : {
      name : 'Sarah Joseph',
      status: 'author'
    },
    date: Date()
  },
  {
     title : "Post Four",
     body : "Body of post Four.",
     category : "social science",
     likes : 3,
     tags : ["news", "events"],
     user : {
       name : 'unknown',
       status: 'author'
     },
     date: Date()
   }
])
```
### Find Formatted Documents
Here, **posts** is collection name
```shell
> db.posts.find().pretty()
```

# MongoDB Operators
[Official Docs](https://docs.mongodb.com/manual/reference/operator/update/)
## Update Operators
* **$addToSet** operator adds a value to an array unless the value is already present, in which case it does nothing to that array.
```
{ 
  $addToSet: { <field1>: <value1>, ... } 
}
```
