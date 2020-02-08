#!/bin/sh

/usr/local/pgsql/bin/psql -d test -a -f get_spgist_tuples.sql
# /usr/local/pgsql/bin/psql -d test -a -f get_spgist_stats.sql
