FROM java:6

RUN wget http://apache.mirror.iweb.ca/tomcat/tomcat-7/v7.0.78/bin/apache-tomcat-7.0.78.tar.gz
RUN mkdir tomcat7
RUN tar xvf apache-tomcat-7.0.78.tar.gz -C tomcat7
RUN cd tomcat7

WORKDIR /tomcat7/apache-tomcat-7.0.78
EXPOSE 8080

CMD ["./bin/catalina.sh", "run"]
