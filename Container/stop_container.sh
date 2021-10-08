#!/bin/bash
docker stop apache-cgi
if [ $? -eq 0 ];then,docker container rm apache-cgi
  echo "containter apache-cgi was stopped"
fi
docker stop apache-no-cgi;docker container rm apache-no-cgi
if [ $? -eq 0 ];then
  echo "containter apache-no-cgi was stopped"
fi
