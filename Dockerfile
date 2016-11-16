FROM java
MAINTAINER giancarlo compagno

WORKDIR /home/root/javahelloworld
COPY ./src/* ./src/
RUN mkdir bin
RUN javac -d bin src/HelloWorld.java
RUN mkdir tmp
ENTRYPOINT ["java","-cp","bin","HelloWorld"] 
