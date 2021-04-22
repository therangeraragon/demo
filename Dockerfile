FROM openjdk:8

WORKDIR usr/src/app

COPY . .

RUN apk add maven

RUN mvn clean install

COPY usr/src/app/demo/target/demo-0.0.1-SNAPSHOT.jar .

EXPOSE 8081

CMD ["java", "-jar", "demo-0.0.1-SNAPSHOT.jar"]