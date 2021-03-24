# Mongo Shell
* To create a database, use the **use** command. If the database doesn’t exist, then the MongoDB cluster will create it.
```bash
> use mydb
switched to db mydb
```
* **show dbs** command will show all available databases
```bash
> show dbs
admin 0.000GB
local  0.000GB
```
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
admin   0.000GB
config  0.000GB
local   0.000GB
mydb    0.000GB
```
* To find out which database is the current one, enter the **db** command. When we entered the use command, then myshinynewdb became the current database.
```shell
> db
mydb
```
* To see all collections, use **show collections** command.
```shell
> show collections
user
```
* To return all documents in a collection, use **db.COLLECTION_NAME.find()** command. In our case **db.user.find()** By default, MongoDB generates a unique [ObjectID](https://docs.mongodb.com/manual/reference/method/ObjectId/) identifier that is assigned to the **_id** field in a new document before writing that document to the database.
```shell
> db.user.find()
//{ "_id" : ObjectId("605b73fcd8d8efdbc75db378"), "name" : "Jane Doe", "age" : 35 }
//{ "_id" : ObjectId("605b78043f4b45f54e83f8ad"), "name" : "John Doe", "age" : 35 }
```

### Drop/Delete a Database
```shell
> db.dropDatabase()
{ "dropped" : "mydb", "ok" : 1 }
```
### Create Collections
```shell
> db.createCollection('posts')
```
