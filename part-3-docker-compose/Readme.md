# Part 3 - Deploy the application using docker-compose 
Create a docker-compose file to deploy the whole application: file essentially defines three services (frontend, backend, and PostgreSQL) and their respective configurations for building, naming, and port mapping. It also sets up a volume for persistent storage.
 
## Service Descriptions

### Volume
- Define a named volume called `frijoles-volume` that will be used to persist data for the PostgreSQL container 
```
version: '3.8'

volumes:
  frijoles-volume:
```


### Frontend
- Builds the image from the Dockerfile in ./../Basic3Tier.UI/
- Container named front 
- Maps host port 80 to container port 8080 
```
services:
  frontend:
    build:
      context: ./../Basic3Tier.UI/
      dockerfile: Dockerfile
    container_name: front
    ports:
      - "80:8080"
```

### Backend
- Builds the image from the Dockerfile in ./../Basic3Tier.API/ 
- Container named back 
- Maps host port 8000 to container port 80 
```
backend:
    build:
      context: ./../Basic3Tier.API/
      dockerfile: Dockerfile
    container_name: back
    ports:
      - "8000:80"
```

### PostgreSQL
- Uses the official PostgreSQL image 
- Container named postgres
- Sets environment variables for PostgreSQL user, password, and database
- Uses the frijoles-volume volume for persistent data
- Maps host port 5432 to container port 5432
```
  postgres:
    image: postgres:latest
    container_name: postgres
    environment:
      - POSTGRES_USER=postgres
      - POSTGRES_PASSWORD=admin123
      - POSTGRES_DB=basic3tier
    volumes:
      - frijoles-volume:/var/lib/postgresql/data
    ports:
      - "5432:5432"

```


## Useful commands
- `$ docker-compose up --build`
- `$ docker-compose up -d`
- `$ docker-compose down`
- `$ docker-compose logs <service_name>`
- `$ docker-compose exec <service_name> <command>`
- `$ docker-compose ps`
- `$ docker-compose up --build --force-recreate`




