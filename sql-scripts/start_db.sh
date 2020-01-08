#!/bin/bash
PGPATH=/usr/local/pgsql
$PGPATH/bin/postgres -D $PGPATH/data > $PGPATH/logfile 2>&1 &