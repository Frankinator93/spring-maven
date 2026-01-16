# Image Java 17
FROM eclipse-temurin:17-jdk

# Dossier de travail dans le conteneur
WORKDIR /app

# Copier le jar dans le conteneur
COPY target/*.jar app.jar

# Port utilisé par Spring Boot
EXPOSE 8080

# Commande de démarrage
ENTRYPOINT ["java", "-jar", "app.jar"]
