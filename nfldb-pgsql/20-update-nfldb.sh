#!/bin/bash
set -e

psql -U nfldb nfldb -c "INSERT into team values('JAX','Jacksonville', 'Jaguars');"