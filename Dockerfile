# Start with a base image containing Java runtime
FROM openjdk:8-jdk-alpine

# Add Maintainer Info
MAINTAINER B S Upadhyay <upadhyaybs@live.com>

# Add a volume pointing to /tmp
VOLUME /tmp

# Make port 8081 available to the world outside this container
EXPOSE 8081

# The application's jar file
#ARG JAR_FILE=build/libs/spring-boot-api-gateway-demo-1.0.0-SNAPSHOT.jar

# Add the application's jar to the container
ADD ${JAR_FILE} spring-boot-api-gateway-demo.jar

# Run the jar file
ENTRYPOINT ["java","-Djava.security.egd=file:/dev/./urandom","-jar","/spring-boot-api-gateway-demo.jar"]

