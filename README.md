Java: jre 1.8

OS Image: microsoft/nanoserver:sac2016

```console
docker run -d crichmond1989/jenkins-agent-windows -jnlpUrl $BASE_URL/computer/Windows/slave-agent.jnlp -secret $SECRET
```