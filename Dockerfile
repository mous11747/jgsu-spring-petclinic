# Use an official OpenJDK runtime as a parent image
FROM openjdk:11-jdk-slim

# Set the working directory to /app
WORKDIR /app

# Copy the application source code into the container
COPY . .

# Build the application using Maven
RUN ./mvnw package

# Set the entrypoint to run the desired commands
ENTRYPOINT ["sh", "-c", "./mvnw package && java -jar target/*.jar"]


