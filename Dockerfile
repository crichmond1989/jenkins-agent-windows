# Source: https://blog.alexellis.io/continuous-integration-docker-windows-containers/

FROM windows-java:jre1.8.0_91

SHELL ["powershell"]
ARG BASE_URL
ARG SECRET

RUN curl ($env:BASE_URL + "/jnlpJars/slave.jar") -OutFile "slave.jar"
ENTRYPOINT ["C:/Java/jre1.8.0_91/bin/java.exe", "-jar", "./slave.jar"]