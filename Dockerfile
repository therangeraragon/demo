FROM openjdk:alpine

WORKDIR /usr/src/app

COPY . .

RUN apk add maven

RUN mvn clean install

EXPOSE 8081

ENTRYPOINT ["java", "-jar", "/usr/src/app/target/demo-0.0.1-SNAPSHOT.jar"]