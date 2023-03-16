# Use an official OpenJDK runtime as a parent image
FROM openjdk:8-jdk-alpine

# Set the working directory to /app
WORKDIR /app

# Copy the current directory contents into the container at /app
COPY . /app

# Build the application using Maven
RUN ./mvnw package -DskipTests

# Run the application using the built JAR file
CMD ["java", "-jar", "target/spring-petclinic-2.4.5.jar"]

