# Usar una imagen base de OpenJDK
FROM openjdk:17-jdk-slim

# Establecer el directorio de trabajo en /app
WORKDIR /app

# Copiar el archivo JAR al contenedor
COPY products-service-example-0.0.1-SNAPSHOT-spring-boot.jar /app.jar

# Exponer el puerto en el que corre la aplicación
EXPOSE 8080

# Ejecutar la aplicación Java
ENTRYPOINT ["java", "-jar", "/app.jar"]
