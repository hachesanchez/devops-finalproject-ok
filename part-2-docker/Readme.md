
# Part 2 - Deploy the application using Docker 
Pre-requisite - Deploy a virtual machine with docker and docker-compose 

## Steps:


### 1. Create a Dockerfile to create a Docker image of the backend application
- `kaputinho/basic3tier-back`
(See Dockerfile-frontend)


### 2. Create a Dockerfile to create a Docker image of the frontend application. To create this image, use a server like “Nginx” as a base image
- `kaputinho/basic3tier-front`
(See Dockerfile-frontend)


### 3. Push the images to DockerHub or any other Docker registry
https://hub.docker.com/search?q=kaputinho


### 4. [Bonus Points] - Create an Azure DevOps pipeline to create docker images from the above Docker file and push the images to the Docker hub or any other docker registry
 

### 5. Deploy the backend application on the virtual machine as a docker container. 
```
$ docker pull kaputinho/basic3tier-back:back
$ docker run --name back -d -p 8000:80 kaputinho/basic3tier-back:back
```

### 6. Deploy the frontend application on the virtual machine as a docker container. 
```
$ docker pull kaputinho/basic3tier-front:front
$ docker run --name front  -d -p 80:8080 kaputinho/basic3tier-front:front
```

### 7. Deploy a database container (using postgres:latest image). 
Use the below environment variables for this database. 
- `POSTGRES_USER: postgres `
- `POSTGRES_PASSWORD: admin123`
- `POSTGRES_DB: basic3tier `

Make sure to use external volume to store the data. 
- Create a docker volume : `docker volume create --volume name`
- Create a container fot a postgres database into a created volume: `docker run --name postgres -e POSTGRES_USER=postgres -e POSTGRES_PASSWORD=admin123 -e POSTGRES_DB=basic3tier -v frijoles-volume:/var/lib/postgresql/data -p 5432:5432 -d postgres:latest`


### 8. [Bonus Point] - Deploy pgadmin (dpage/pgadmin4:latest) for connecting to the above Postgres database. 


### 9. Create the required networks and volumes. 


### 10.Verify that your application is up and running. 


### 11.Perform the CRUD operations to verify all three services are communicating with each other. 
_Note_ – To connect the backend with the frontend, you will need a connection string. 
**ConnectionStrings__Basic3Tier:**
``````
"Host=<hostname of the 
application>;Port=<port_number>;Database=<Db_name>;Username=postgres;Pas sword=admin123" 
``````
 