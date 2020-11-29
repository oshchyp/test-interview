#!/usr/bin/env bash
echo "--------------------------------------------------------"
echo "Create adgoal database!"
mysql \
--user='root' \
--password=${MYSQL_ROOT_PASSWORD} \
--execute "CREATE DATABASE IF NOT EXISTS adgoal CHARACTER SET utf8 COLLATE utf8_bin"

mysql --user='root' --password=${MYSQL_ROOT_PASSWORD} adgoal < /docker-entrypoint-initdb.d/dump/programs.sql
echo "--------------------------------------------------------"

