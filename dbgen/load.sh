#!/bin/bash

cpimport tpch customer -s '|' TPC-H V3.0.1/dbgen/customer.tbl
cpimport tpch lineitem -s '|' TPC-H V3.0.1/dbgen/lineitem.tbl
cpimport tpch nation -s '|' TPC-H V3.0.1/dbgen/nation.tbl
cpimport tpch orders -s '|' TPC-H V3.0.1/dbgen/orders.tbl
cpimport tpch part -s '|' TPC-H V3.0.1/dbgen/part.tbl
cpimport tpch partsupp -s '|' TPC-H V3.0.1/dbgen/partsupp.tbl
cpimport tpch region -s '|' TPC-H V3.0.1/dbgen/region.tbl
cpimport tpch supplier -s '|' TPC-H V3.0.1/dbgen/supplier.tbl