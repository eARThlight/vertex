#!/bin/bash
#
# local_deploy.sh
#
# Description:  Deploy the vertex app from a local checkout.
# Argument (optional):  a first argument {arg1} will match sql files like this:
#	*{arg1}.sql
#	so you can do something like "bin/local_deploy.sh geo"
#	and this will only match vertex_dim_geo.sql
#	No arg means 'run all sql files', i.e., match *.sql

#source functions and change to the root of the codebase
script_dir="$(dirname $0)"
for bamboo_function in $script_dir/bamboo_functions/*.sh; do
  source $bamboo_function
done
cd $script_dir/..
base_dir="$(pwd)"

# traps, shell settings
trap exit_handler EXIT
trap "exit 12" INT
set -e

# Main
#begin ": vertex deployment"

# Run composer
run_composer

# Run migrations
run_mpm_migrations

# Apply all the Views from src/sql
run_ddl $1

exit 0
