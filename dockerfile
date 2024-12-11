# Use an OpenJDK base image
FROM openjdk:latest

# Set the working directory inside the container
WORKDIR /app

# Copy the current directory's contents to /app in the container
COPY . /app

# Compile the HelloWorld.java file
RUN javac AddTwoNumbers.java

# Command to run the compiled Java program
ENTRYPOINT ["java", "AddTwoNumbers"]
