#!/bin/bash
set -e

echo `service mysql status`
 
service mysql start
sleep 3
 
echo 'importing data....'
mysql < /mysql/DemoDB2.sql
echo 'imported data....'
 
echo `service mysql status`
 
tail -f /dev/null
