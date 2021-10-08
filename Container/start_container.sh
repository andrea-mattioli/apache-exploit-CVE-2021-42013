#!/bin/bash
docker run --name apache-cgi -dit -p 8080:80 apache-cve-2021-42013:cgi_enable
if [ $? -eq 0 ];then
  echo "containter start with cgi enable start on port 8080"
fi
docker run --name apache-no-cgi -dit -p 8081:80 apache-cve-2021-42013:cgi_disable
if [ $? -eq 0 ];then
  echo "containter start without cgi enable start on port 8081"
fi
