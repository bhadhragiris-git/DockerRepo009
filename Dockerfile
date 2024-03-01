FROM amazoncorretto:17-alpine3.17-jdk
LABEL author="khaja" 
LABEL project="learning"
RUN addgroup -g 1000 spc && adduser -h "/spc" -u 1000 -G spc -s /bin/bash -D spc
# switching to user spc
USER spc
ADD --chown=spc:spc https://referenceapplicationskhaja.s3.us-west-2.amazonaws.com/spring-petclinic-3.1.0-SNAPSHOT.jar /spc/spring-petclinic-3.1.0-SNAPSHOT.jar
WORKDIR /spc
RUN wget https://referenceapplicationskhaja.s3.us-west-2.amazonaws.com/spring-petclinic-3.1.0-SNAPSHOT.jar
EXPOSE 8080
CMD ["java", "-jar", "spring-petclinic-3.1.0-SNAPSHOT.jar"] 
#CMD ["java", "-jar", "spring-petclinic-3.1.0-SNAPSHOT.jar"]