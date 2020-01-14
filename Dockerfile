FROM alpine/git as clone
WORKDIR /app
RUN git clone https://github.com/agoncal/agoncal-application-petstore-ee7.git

FROM maven:3.5-jdk-8-alpine as build
WORKDIR /app
COPY --from=clone /app/agoncal-application-petstore-ee7 /app
RUN mvn clean install -Dmaven.test.skip=true

FROM openjdk:8-jre-alpine
WORKDIR /app
COPY --from=build /app/target/applicationPetstore.war /app
CMD ["/usr/bin/java -jar applicationPetstore.war"]
