#!/bin/sh
#/Users/erikdunning/wip/apache-tomcat-6.0.36/bin/catalina.sh jpda run   |awk '
#  /INFO/ {print "\033[32m" $0 "\033[39m"}
#  /ERROR/ {print "\033[31m" $0 "\033[39m"}
#  /SEVERE/ {print "\033[31m" $0 "\033[39m"}
#'  ;

/Users/erikdunning/wip/apache-tomcat-6.0.36/bin/catalina.sh jpda run   

