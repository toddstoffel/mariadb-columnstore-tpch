#!/bin/bash
MCS_DIR="/usr/bin"
QUERY_DIR="queries"

for file in "$QUERY_DIR"/*.sql; do
  query_name=$(basename "$file" .sql)
  echo "==== $query_name.sql"

  $MCS_DIR/mariadb -u root -e "select calFlushCache()"

  for _ in {1..4}; do
    $MCS_DIR/mariadb -u root -vvv tpch < "$file"
  done

done