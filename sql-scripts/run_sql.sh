#!/bin/sh

# this will run a sql script file in the test database
# TODO: make sql file load from cli argument 
/usr/local/pgsql/bin/psql -a -f make_test_db.sql
/usr/local/pgsql/bin/psql -d test -a -f make_quad.sql
/usr/local/pgsql/bin/psql -d test -a -f make_quad_idx.sql