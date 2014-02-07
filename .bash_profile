set -o vi
export PATH=~/Library/Java/Home/bin:/usr/local/bin:/Library/PostgreSQL/8.4/bin:~/bin:$PATH
export PATH=~/bin:$PATH
export PATH=~/usr/local/sbin:$PATH

export EDITOR=vi
export MAVEN_OPTS="-Xmx3000m"
export CATALINA_OPTS="-Xms512m -Xmx1024m -javaagent:/Users/erikdunning/bin/eclipse/plugins/org.zeroturnaround.eclipse.embedder_5.5.0.SR2-201401060924/jrebel/jrebel.jar"
export JAVA_OPTS=-Xmx1512m
export JPDA_ADDRESS=8000
export JPDA_TRANSPORT=dt_socket
#java 6
export JAVA_HOME=/Library/Java/Home
export JAVA_OPTS="-Xms256m -Xmx512m -XX:MaxPermSize=128m"
alias startPostgres='pg_ctl -D /usr/local/var/postgres/data -l /usr/local/var/postgres/data/server.log start'
alias buildcs-3.8.0-realease='cd ../JA_CORE-1.1.6-release/ ;  svn up; mvn clean -U buildnumber:create install ; cd ../JA_SERVICES-1.1.7-release ; svn up;mvn clean -U buildnumber:create install; cd ../IDM-3.8.0-release/; '
alias buildcs='cd ../JA_CORE-3.8.1-dev/ ;  svn up; mvn clean -U buildnumber:create install ; cd ../JA_SERVICES-3.8.1-dev ; svn up;mvn clean -U buildnumber:create install; cd ../IDM-3.8.1-dev/; '
alias buildServices='cd ../JA_SERVICES-3.8.1-dev ; mvn clean -U buildnumber:create install; cd ../IDM-3.8.1-dev/; '
alias deployTomcat6='killTomcat.sh; cleanTomcat.sh; mvn  clean package -P local; cp target/jatt.war  ../apache-tomcat-6.0.36/webapps/jatt.war; startTomcat6.sh'
alias deployTomcat7='killTomcat.sh; cleanTomcat.sh; mvn  clean package -P local; cp target/jatt.war  ../apache-tomcat-7.0.47/webapps/jatt.war; startTomcat7.sh'
alias deployTomcatTestDB='killTomcat.sh; cleanTomcat.sh; mvn  clean package -P local-test; cp target/jatt.war  ../apache-tomcat-6.0.36/webapps/jatt.war; startTomcat.sh'
alias cleanMaven='rm -rf target/ .classpath .settings/ .project .DS_Store logs/'


alias cur='cd wip/IDM-3.8.1-dev/'

export PATH=/usr/local/sbin:$PATH
