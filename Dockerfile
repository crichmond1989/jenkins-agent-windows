# Source: https://blog.alexellis.io/continuous-integration-docker-windows-containers/

FROM openjdk:8-nanoserver

COPY ./resources/slave.jar ./slave.jar

CMD java -jar ./slave.jar