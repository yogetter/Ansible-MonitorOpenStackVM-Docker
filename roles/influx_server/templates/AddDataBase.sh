#!/bin/bash

curl -XPOST 'http://localhost:8086/query' --data-urlencode 'q=CREATE DATABASE "{{ influxdb_name  }}"'
