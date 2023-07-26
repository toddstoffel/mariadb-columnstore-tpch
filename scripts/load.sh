#!/bin/bash
MCS_DIR=/usr/bin

tables=("customer" "lineitem" "nation" "orders" "part" "partsupp" "region" "supplier")

for table in "${tables[@]}"
do
    $MCS_DIR/cpimport tpch "$table" "dbgen/$table.tbl"
done
