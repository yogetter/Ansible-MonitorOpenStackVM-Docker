#!/bin/bash

curl --user admin:admin 'http://localhost:3000/api/datasources' -X POST -H 'Content-Type: application/json;charset=UTF-8' --data-binary '{"name":"db","type":"influxdb","url":"http://{{ influxdb_ip }}:{{ influxdb_port }}", "access":"proxy", "database":"telegraf", "user":"", "password":""}'
