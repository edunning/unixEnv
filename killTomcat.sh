#!/bin/sh
ps -ef | grep tomcat | awk '{ print $2 }' | xargs kill
sleep 2;
ps -ef | grep tomcat | awk '{ print $2 }' | xargs kill -9

