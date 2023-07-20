FROM openjdk:8-jre-alpine

EXPOSE 8080
#FOR GRADLE
#COPY ./build/libs/java-app-1.0-SNAPSHOT.jar /usr/app/
#FOR MAVEN
COPY ./target/java-app-1.0-SNAPSHOT.jar /usr/app/
WORKDIR /usr/app

ENTRYPOINT ["java", "-jar", "my-app-1.0-SNAPSHOT.jar"]
