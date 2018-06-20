#!/bin/bash

curl --user admin:admin 'http://localhost:3000/api/datasources' -X POST -H 'Content-Type: application/json;charset=UTF-8' --data-binary '{"name":"{{ influxdb_name  }}","type":"influxdb","url":"http://{% for host in groups['influxdb'] %}{{ host }}{% endfor %}:{{ influxdb_port }}", "access":"proxy", "database":"{{ influxdb_name  }}", "user":"", "password":""}'
