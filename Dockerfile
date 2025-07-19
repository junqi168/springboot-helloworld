# Use a lightweight JDK base image
FROM eclipse-temurin:17-jdk-alpine

# Set environment variable
ENV APP_HOME=/app
WORKDIR $APP_HOME

# Copy the built JAR file
COPY target/helloworld-0.0.1-SNAPSHOT.jar app.jar

# Expose the application's port
EXPOSE 8080

# Run the JAR file
ENTRYPOINT ["java", "-jar", "app.jar"]
