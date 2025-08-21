#Creating a base image with java version
FROM openjdk:17-jdk-alpine3.14

#Creating working directory
WORKDIR /app

#Copying the src files into app folder
COPY /src/Main.java /app/Main.java

#Copy the quotes text file into app folder
COPY quotes.txt /app/quotes.txt

#Run command to execute
RUN javac Main.java

#Application runs on Port8000
EXPOSE 8000:8000

#Command which keeps container alive
CMD ["java","Main"]

