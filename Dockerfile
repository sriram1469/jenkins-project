# Use official OpenJDK base image
FROM openjdk:11-jre-slim

# Set working directory inside container
WORKDIR /app

# Copy built JAR from Maven target folder
COPY target/*.jar app.jar

# Expose application port
EXPOSE 8080

# Run the JAR
ENTRYPOINT ["java", "-jar", "app.jar"]
