#FROM openjdk:17.0.2-jdk-slim
#EXPOSE 9091
#ADD target/spring-boot-docker.jar spring-boot-docker.jar
#ENTRYPOINT ["java", "-jar", "/spring-boot-docker.jar"]


FROM openjdk:17.0.2
VOLUME /tmp
EXPOSE 8888
ARG JAR_FILE=target/spring-boot-docker.jar
ADD ${JAR_FILE} app.jar
ENTRYPOINT ["java","-jar","/app.jar"]