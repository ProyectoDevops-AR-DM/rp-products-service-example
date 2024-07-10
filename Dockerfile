# Utilizar una imagen base de OpenJDK
FROM openjdk:17-jdk-slim

# Establecer el directorio de trabajo dentro del contenedor
WORKDIR /app

# Copiar el archivo JAR desde el directorio target al contenedor
ARG JAR_FILE
COPY ${JAR_FILE} /app/app.jar

# Comando para ejecutar el JAR
CMD ["java", "-jar", "/app/app.jar"]
