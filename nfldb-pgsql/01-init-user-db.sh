#!/bin/bash
set -e

psql -v ON_ERROR_STOP=1 --username "$POSTGRES_USER" <<-EOSQL
    CREATE USER nfldb PASSWORD 'go_cowboys';
    CREATE DATABASE nfldb;
    GRANT ALL PRIVILEGES ON DATABASE nfldb TO nfldb;
EOSQL

psql -v ON_ERROR_STOP=1 --username "$POSTGRES_USER" -c 'CREATE EXTENSION fuzzystrmatch;' nfldb