# doc-conversion/Dockerfile
# Stage 1: Build the JAR
FROM maven:3.8.6-eclipse-temurin-17-alpine AS build
WORKDIR /app
COPY . .
RUN mvn clean install package -DskipTests

# Stage 2: Copy the JAR to a lighter image
FROM eclipse-temurin:17-jre-alpine
COPY --from=build /app/target/*.jar app.jar
EXPOSE 8080
ENTRYPOINT ["java", "-jar", "/app.jar"]
