FROM tomcat:8
#RUN sed -i 's/port="8080"/port="9090"/' /usr/local/tomcat/conf/server.xml
COPY ./target/*.war /usr/local/tomcat/webapps/
EXPOSE 8080
WORKDIR /usr/local/tomcat
CMD ["catalina.sh", "run"]
