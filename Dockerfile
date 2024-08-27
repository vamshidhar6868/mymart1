FROM openjdk:17-jdk

RUN mkdir /mymart

WORKDIR /mymart

COPY pom.xml .

COPY src /mymmart/src

RUN mvn package 

COPY . .

EXPOSE 8080

CMD ["java", "-jar", "target", "Mymart-0.0.1-SNAPSHORT.jar"]
