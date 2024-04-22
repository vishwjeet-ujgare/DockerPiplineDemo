#use the offical OpenJDK image as a parent image
FROM openjdk:latest

#set the woeking directory to /app
WORKDIR /app

#copy the current directory contens into the container at /app
COPY . /app


#Complie the java code 
RUN javac Test.java

#Run the program when the container starts
CMD ["java","Test"]
