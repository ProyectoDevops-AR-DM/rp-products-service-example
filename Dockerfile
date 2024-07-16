# Usar una imagen base de OpenJDK
FROM openjdk:11-jre-slim

# Crear un grupo y un usuario no root
RUN groupadd -r productgroup && useradd -r -g productgroup -m -s /bin/sh productuser

# Establecer el directorio de trabajo dentro del contenedor
WORKDIR /app

# Copiar el archivo JAR de la aplicación al contenedor
COPY target/products-service-example-0.0.1-SNAPSHOT-spring-boot.jar /app/products-service-example.jar

# Cambiar la propiedad del archivo JAR para el nuevo usuario
RUN chown productuser:productgroup products-service-example.jar

# Cambiar al nuevo usuario no root
USER productuser

ENTRYPOINT ["java", "-jar", "products-service-example.jar"]


