# Mongo Shell
* To create a database, use the **use** command. If the database doesn’t exist, then the MongoDB cluster will create it.
```
use mydb
```
* **show dbs** command will show all available databases
```
> show dbs
admin 0.000GB
local  0.000GB
```
* Our newly created database is not seen here. We need to insert data. To add a document, 
we need to use **db.COLLECTION_NAME.insert** command.
```
> db.user.insert({name: "Jane Doe", age: 35})
WriteResult({ "nInserted" : 1 })
```
* Now let's check **show dbs** command again.
```
> show dbs
admin   0.000GB
config  0.000GB
local   0.000GB
mydb    0.000GB
```
* To find out which database is the current one, enter the **db** command.
```
> db
mydb
```
###### It turns out that when you entered the use command, then myshinynewdb became the current database.
