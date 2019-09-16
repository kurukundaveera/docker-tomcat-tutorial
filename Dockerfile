FROM tomcat:8.0-alpine
LABEL maintainer="veera"

ADD sample.war /usr/local/tomcat/webapps/

COPY tomcat-users.xml /usr/local/tomcat/conf/tomcat-users.xml
COPY host-manager-context.xml /usr/local/tomcat/webapps/host-manager/META-INF/context.xml
COPY manager-context.xml /usr/local/tomcat/webapps/manager/META-INF/context.xml

EXPOSE 8080
CMD ["catalina.sh", "run"]
