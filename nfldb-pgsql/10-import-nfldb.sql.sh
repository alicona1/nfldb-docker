#!/bin/bash
set -e

psql -v -U nfldb nfldb < /root/nfldb.sql
