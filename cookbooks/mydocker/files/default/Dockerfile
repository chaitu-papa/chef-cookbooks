FROM tomcat:8.0.20-jre8
RUN apt-get update 
RUN apt-get install -y wget
RUN apt-get install -y vim
COPY tomcat-users.xml /usr/local/tomcat/conf/
RUN wget -O /usr/local/tomcat/webapps/HelloWorld.war http://54.175.92.214:8081/nexus/service/local/artifact/maven/redirect?r=snapshots\&g=com.cts\&a=HelloWorld\&v=0.1-SNAPSHOT\&p=war