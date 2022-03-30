# to use JDK 11
FROM adoptopenjdk/openjdk11:alpine-jre

RUN addgroup yassir && adduser -S -G yassir yassir
USER yassir


EXPOSE 8080
COPY target/demo-0.0.1-SNAPSHOT.jar app.jar

ENTRYPOINT ["java","-jar","/app.jar"]
