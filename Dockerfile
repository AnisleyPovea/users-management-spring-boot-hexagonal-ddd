FROM maven:3.9-eclipse-temurin-17
WORKDIR /app

COPY . .
RUN mvn -B -q -DskipTests package && mv target/*.jar app.jar

EXPOSE 8080
ENTRYPOINT ["java","-jar","app.jar"]