FROM openjdk:17-jdk

ENV PYTHONUNBUFFERED 1

RUN mkdir /mymart

WORKDIR /mymart

COPY src ./src

RUN mvn package -DskipTests

COPY . .

EXPOSE 8080

CMD ["java", "-jar", "target", "Mymart-0.0.1-SNAPSHORT.jar"]
