# Usa una imagen base de Java
FROM openjdk:17-jdk-alpine

# Crea un directorio de trabajo en el contenedor
WORKDIR /app

# Copia el archivo JAR desde el directorio target al contenedor
COPY target/products-service-example-0.0.1-SNAPSHOT.jar /app.jar

# Comando para ejecutar el archivo JAR
ENTRYPOINT ["java", "-jar", "/app.jar"]
