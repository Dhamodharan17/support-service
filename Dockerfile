# Stage 1: Use a base image with Java
FROM eclipse-temurin:17-jdk-alpine

# Copy the JAR file to the container
COPY /target/supportservice-*.jar /home/sundar/

# Command to run the JAR
CMD ["sh", "-c", "java $JVM_OPTS -jar /home/sundar/supportservice-*-SNAPSHOT.jar"]

# Expose the port your Spring Boot app runs on
EXPOSE 8080
