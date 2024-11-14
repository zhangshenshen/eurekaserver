FROM openjdk:17-alpine
WORKDIR /
EXPOSE 8080
ARG JAR_FILE=eureka-server-0.0.1-SNAPSHOT.jar
ADD target/${JAR_FILE} eureka-server.jar
CMD ["java","-jar","eureka-server.jar"]