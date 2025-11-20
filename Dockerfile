# stable official Java runtime base image / use eclipse for mini 
# FROM openjdk:17-jdk-alpine
FROM eclipse-temurin:17-jdk-alpine

# metadata
LABEL maintainer="your-email@example.com"
LABEL version="1.0"
LABEL description="A simple Java application"

# working directory
WORKDIR /app

# Copy source code into the container
COPY src/Main.java /app/Main.java

# Compile the Java code
RUN javac Main.java

# Run the Java application when the container starts
CMD ["java", "Main"]
# Alternatively, you can use ENTRYPOINT
# ENTRYPOINT ["java", "Main"] 