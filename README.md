# TPC-H Benchmark For MariaDB ColumnStore

Git clone this project:
```
git clone https://github.com/toddstoffel/mariadb-columnstore-tpch.git
```

Navigate to the project folder:
```
cd mariadb-columnstore-tpch
```

Navigate to dbgen folder:
```
cd dbgen
```

Run the make command:
```
make
```  

Generate the files for TPC-H testing. The -s represents the scale factor which has properly defined values in TPC-H.
```
./dbgen -s 1
```  

The generation of files will take some time. After completion, it will create a series of files ending with .tbl. To list them, type:
```
ls -l *.tbl
```

Navigate back to project root folder:
```
cd ..
```

Create TPC-H Schema:
```
mariadb -vvv < scripts/schema.sql
```

Load the data:
```
./scripts/load.sh
```

Run queries:
```
./scripts/run_all_queries.sh
```