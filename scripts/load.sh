#!/bin/bash

cpimport tpch customer -s '|' ../dbgen/customer.tbl
cpimport tpch lineitem -s '|' ../dbgen/lineitem.tbl
cpimport tpch nation -s '|' ../dbgen/nation.tbl
cpimport tpch orders -s '|' ../dbgen/orders.tbl
cpimport tpch part -s '|' ../dbgen/part.tbl
cpimport tpch partsupp -s '|' ../dbgen/partsupp.tbl
cpimport tpch region -s '|' ../dbgen/region.tbl
cpimport tpch supplier -s '|' ../dbgen/supplier.tbl