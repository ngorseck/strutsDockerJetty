FROM maven:3.6.3-jdk-11-slim
WORKDIR /app
COPY pom.xml .
ADD ./src/ ./src
RUN ls
EXPOSE 8080
CMD ["mvn","jetty:run"]