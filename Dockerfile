# Stage 1: Use a base image with Java
FROM eclipse-temurin:17-jdk-alpine

# Set the working directory inside the container
WORKDIR /home/sundar

# Copy the JAR file to the container
COPY target/*.jar app.jar

# Expose the port your Spring Boot app runs on
EXPOSE 8080

# Command to run the JAR
ENTRYPOINT ["java", "-jar", "app.jar"]
