#!/bin/bash
#
# build_database.sh - create empty temperature database schema for to log temperature in.
#
# © BrewlabTokyo 18/04/2017
sqlite3 piTemps3.db 'DROP TABLE temperature_records;'
sqlite3 piTemps3.db 'CREATE TABLE temperature_records(unix_time bigint primary key, Fermenter real, Chamber real, Room real);' 

