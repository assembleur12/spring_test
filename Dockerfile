FROM debian:latest


RUN apt-get update -y

RUN apt-get install openjdk-17-jdk  -y

RUN apt-get install openjdk-17-jre -y

RUN apt-get install maven spring -y

COPY Demo Demo

WORKDIR /Demo

EXPOSE 8080

CMD ["mvn","spring-boot:run"]
