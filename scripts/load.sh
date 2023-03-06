#!/bin/bash

cpimport tpch CUSTOMER -s '|' dbgen/customer.tbl
cpimport tpch LINEITEM -s '|' dbgen/lineitem.tbl
cpimport tpch NATION -s '|' dbgen/nation.tbl
cpimport tpch ORDERS -s '|' dbgen/orders.tbl
cpimport tpch PART -s '|' dbgen/part.tbl
cpimport tpch PARTSUPP -s '|' dbgen/partsupp.tbl
cpimport tpch REGION -s '|' dbgen/region.tbl
cpimport tpch SUPPLIER -s '|' dbgen/supplier.tbl