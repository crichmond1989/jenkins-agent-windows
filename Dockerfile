# Source: https://blog.alexellis.io/continuous-integration-docker-windows-containers/

FROM crichmond1989/windows-java:jre1.8

SHELL ["powershell"]
ARG BASE_URL
ARG SECRET

RUN Invoke-WebRequest ($env:BASE_URL + "/jnlpJars/slave.jar") -OutFile "slave.jar"

ENTRYPOINT ["java", "-jar", "./slave.jar"]