# Use OpenJDK as the base image
FROM eclipse-temurin:21-jdk

# Add Maintainer Info
LABEL maintainer="mayankjain6377@gmail.com"

# Create a directory inside the container
WORKDIR /app

# Copy the JAR file into the container
COPY target/SpringBootDocker.jar app.jar

# Run the jar file
ENTRYPOINT ["java","-jar","/app/app.jar"]
