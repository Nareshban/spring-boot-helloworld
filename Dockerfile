FROM maven:3.8.6-eclipse-temurin-8-alpine as builder
COPY . /opt
WORKDIR /opt
RUN mvn clean package -DskipTests=true
RUN cp target/*.jar app.jar

FROM openjdk:11
RUN mkdir /src
COPY --from=builder  /opt/app.jar /src/app.jar
WORKDIR /src
EXPOSE 8080
ENTRYPOINT ["java","-jar","app.jar"]