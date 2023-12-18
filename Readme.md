# DevOps Bootcamp Final Project - The Frijoles

## Team Members
- Alejandro Reche
- Alex Ocaña
- Alberto Combatti
- Helena García (Scrum Master)

## Sprint Cycle
- Duration: 5 days
 
## Definition of Done
Done means coded to standards, reviewed, tested, integrated, and documented.

## Project Overview

This repository contains the final project for the DevOps Bootcamp, completed by Team1: The Frijoles. The project focuses on implementing DevOps practices and deploying a web application using various tools and services.

 
## Project Structure

### Part 1 - Deploy Code Locally (Not Evaluated)
- Deploy backend, frontend, and database locally.

### Part 2 - Deploy Application using Docker
- Create Dockerfiles for backend and frontend.
- Push images to DockerHub.
- Deploy containers on a virtual machine.

### Part 3 - Deploy Application using Docker-Compose
- Create a docker-compose file for deploying the entire application.

### Part 4 - Deploy Application on Azure Web Apps
- Create web apps under one app service plan using Terraform.
- Utilize Azure DevOps pipelines for deployment.

### Part 5 - Create an AKS Cluster using Terraform 
- Set up Terraform workspace and module for AKS deployment.
- Manage state in Azure Blob Storage.
- Follow best practices for Terraform code.

### Part 6 - Deploy Whole Application on AKS  
- Create deployment YAML files for frontend, backend, and database.
- Deploy pods and services on AKS.
- Optionally, add a domain for the application.

### Part 7 - Deploy and Manage Prometheus and Grafana
- Use Ansible playbooks to deploy Prometheus and Grafana on a Linux machine.
- Monitor infrastructure metrics using Grafana.
- Enable monitoring logs of AKS on managed Prometheus and Grafana.

 
## 🐙 Git commands 

- Make sure you are on "YOUR_BRANCH" branch
`git checkout YOUR_BRANCH`

- Add changes to the staging area
`git add .`

- Commit the changes
`git commit -m "Your commit message here"`

- Switch to the main branch
`git checkout main`

- Pull changes from the remote main branch
`git pull origin main`

- Merge changes from YOUR_BRANCH into main (this may cause conflicts)
`git merge YOUR_BRANCH`

- If there are conflicts, resolve them and commit the changes

- Push changes to the remote main branch
`git push origin main`

- Switch to your branch
`git checkout YOUR_BRANCH`

- Merge changes from main into YOUR_BRANCH
`git merge main`


