# to use JDK 11
FROM adoptopenjdk/openjdk11:alpine-jre

RUN addgroup yassir && adduser -S -G yassir yassir
USER yassir


EXPOSE 7000
ADD /target/*.jar app.jar
ENTRYPOINT ["java","-jar","/app.jar"]
