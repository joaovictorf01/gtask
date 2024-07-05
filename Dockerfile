FROM openjdk:21-jdk

VOLUME /tmp
ARG JAVA_OPTS
ENV JAVA_OPTS=$JAVA_OPTS

# Copia o arquivo jar para o container
COPY target/gtask-0.0.1-SNAPSHOT.jar gtask.jar

# Expõe a porta 8080 para acesso externo
EXPOSE 8080

# Define o comando de execução do jar com Java Options
ENTRYPOINT exec java $JAVA_OPTS -jar gtask.jar
# Para projetos Spring Boot, use a entrada abaixo para reduzir o tempo de inicialização do Tomcat.
#ENTRYPOINT exec java $JAVA_OPTS -Djava.security.egd=file:/dev/./urandom -jar gtask.jar
