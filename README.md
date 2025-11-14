# CarritoCompras

Aplicación web de e-commerce desarrollada con Spring Boot y MySQL, completamente dockerizada.

## Tecnologías

- **Spring Boot 3.1.5** (Java 17)
- **Spring Data JPA** 
- **Thymeleaf**
- **MySQL 8.0**
- **Docker & Docker Compose**

## Requisitos Previos

- Docker Desktop instalado ([Descargar aquí](https://www.docker.com/products/docker-desktop))

## Levantar el Proyecto con Docker

### 1. Clonar/Descargar el proyecto

```bash
cd carritocompras
```

### 2. Iniciar los contenedores

```bash
docker-compose up -d --build
```

**Nota:** La primera vez puede tardar 3-5 minutos en descargar imágenes y compilar.

### 3. Verificar que los contenedores estén corriendo

```bash
docker-compose ps
```

Deberías ver 2 servicios activos:
- `mysql-db` (MySQL)
- `spring-app` (Aplicación Spring Boot)

### 4. Acceder a la aplicación

Abre tu navegador en:

```
http://localhost:8080/productos
```

Verás una tabla con 10 productos de ejemplo.

## Comandos Útiles

### Ver logs en tiempo real

```bash
docker-compose logs -f
```

### Ver logs solo de la aplicación

```bash
docker-compose logs -f spring-app
```

### Ver logs solo de MySQL

```bash
docker-compose logs -f mysql-db
```

### Reiniciar los contenedores

```bash
docker-compose restart
```

### Detener los contenedores

```bash
docker-compose down
```

### Detener y eliminar todo (incluidos datos)

```bash
docker-compose down -v
```

**⚠️ Advertencia:** El flag `-v` elimina los volúmenes y perderás los datos de la base de datos.

## Acceso a la Base de Datos

### Desde el host (tu máquina)

- **Host:** localhost
- **Puerto:** 3307
- **Base de datos:** demo_jpa
- **Usuario:** appuser
- **Contraseña:** apppassword

### Conectarse con MySQL CLI

```bash
docker-compose exec mysql-db mysql -u appuser -p demo_jpa
```

Password: `apppassword`

### Ver productos en la base de datos

```bash
docker-compose exec mysql-db mysql -u appuser -papppassword -e "SELECT * FROM demo_jpa.producto"
```

## Solución de Problemas

### La aplicación no responde

Espera 30-60 segundos después de iniciar los contenedores. La aplicación necesita tiempo para:
1. MySQL debe iniciar completamente
2. Spring Boot debe compilar e iniciar
3. La conexión debe establecerse

### Resetear completamente el proyecto

```bash
docker-compose down -v
docker-compose up -d --build
```

## Autor

Proyecto desarrollado para Taller de Construcción de Software

