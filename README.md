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

Copy the makefile:
```
cp makefile.suite makefile
```

Edit the makefile:
```
nano makefile
```
 
Find the values CC, DATABASE, MACHINE and WORKLOAD and change them as follows
```
################
## CHANGE NAME OF ANSI COMPILER HERE
################
CC      = gcc
# Current values for DATABASE are: INFORMIX, DB2, TDAT (Teradata)
#                                  SQLSERVER, SYBASE, ORACLE, VECTORWISE
# Current values for MACHINE are:  ATT, DOS, HP, IBM, ICL, MVS, 
#                                  SGI, SUN, U2200, VMS, LINUX, WIN32 
# Current values for WORKLOAD are:  TPCH
DATABASE= ORACLE
MACHINE = LINUX
WORKLOAD = TPCH
#
...
```

Quit nano and save the changes.


Run the make command:
```
make
```  

Generate the files for TPC-H testing. The -s represents the scale factor which has properly defined values in TPC-H. The efault is 1 which represents 1 GB. For testing purposes, 1000 is used here, representing 1TB of data.
```
./dbgen -s 1000
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
mariadb < scripts/schema.sql
```

Load the data:
```
./scripts/load.sh
```

Run queries:
```
mariadb tpch < queries/01.sql
mariadb tpch < queries/02.sql
...
mariadb tpch < queries/22.sql
```