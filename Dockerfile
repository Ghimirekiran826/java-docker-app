# Use a stable Java 17 base image
FROM eclipse-temurin:17-jdk-jammy

# Set working directory inside the container
WORKDIR /app

# Copy Java source file into the container
COPY HelloServer.java .

# Compile the Java file
RUN javac HelloServer.java

# Expose port 8080 for HTTP
EXPOSE 8080

# Run the Java server
CMD ["java", "HelloServer"]

