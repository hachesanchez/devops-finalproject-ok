# Part 1 - Deploy Code Locally (Not to be evaluated)

This part of the project is designed to give you an overview of the application by deploying its components locally. 

## 1. Deploy Backend

The backend of the application is built using dotnet core. Follow the steps below to deploy the backend:

- Refer to the [official documentation](https://learn.microsoft.com/en-us/dotnet/core/tools/dotnet) for dotnet commands.

**Steps:**

- Open a terminal or command prompt.
- Navigate to your backend project directory
- Build the project: `$ dotnet build`
- Run the project: $ `dotnet run`

 
## 2. Deploy Front with Nginx:

The front end is built with simple HTML and CSS. You can use a server like Nginx or Tomcat to deploy your front-end application Refer: https://www.nginx.com/resources/glossary/nginx/

**Steps:** 

- Place your frontend code in a directory accessible by the web server
- Install and configure Nginx (if not already installed): `$ brew install nginx`
- Create an Nginx configuration file for your frontend: `$ sudo nano /opt/homebrew/etc/nginx/nginx.conf` ---> edit the root folder and set the root where index.html is
- Start Nginx: `$ sudo service nginx start`
- Access your frontend by navigating to http://localhost in your web browser
 

## 3. Deploy Database
 
**Steps:** 

- Install PostgreSQL and start the PostgreSQL server
- Create a new database for your project
- Update your backend application configuration to point to the local PostgreSQL database
- Migrate your database schema: `$ dotnet ef database update `
