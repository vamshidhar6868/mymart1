FROM openjdk:17-jdk, maven, gradle, spring 

RUN mkdir /mymart

WORKDIR /mymart

COPY src/main/resources/application.properties

RUN mvn package -DskipTests

COPY . .

EXPOSE 8080

CMD ["java", "-jar", "target", "Mymart-0.0.1-SNAPSHORT.jar"]
