...* To create a database, use the **use** command. If the database doesn’t exist, then the MongoDB cluster will create it.
```
use mydb
```
...* **show dbs** command will show all available databases
```
> show dbs
admin 0.000GB
local  0.000GB
```
...* Our newly created databases is not seen here. We need to insert data. To add a document, 
...use **db.COLLECTION_NAME.insert**
