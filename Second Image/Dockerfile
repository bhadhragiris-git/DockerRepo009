FROM tomcat:9-jdk8
LABEL author="Srinivas" 
LABEL project="learning"
WORKDIR /usr/local/tomcat/webapps
RUN wget https://referenceapplicationskhaja.s3.us-west-2.amazonaws.com/gameoflife.war
#ADD https://referenceapplicationskhaja.s3.us-west-2.amazonaws.com/gameoflife.war /usr/local/tomcat/webapps
#COPY gameoflife.war /usr/local/tomcat/webapps
EXPOSE 8080
