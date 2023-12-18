#  Part 6 – Deploy the whole application on AKS (Azure Kubernetes Services)

## Steps

- Create three deployment YAML files, one each for frontend, backend, and database. 
- Deploy one pod of frontend, three pods of backend and one pod of the database. 
- Create a NodePort Service to expose “frontend application” 
- Create a NodePort Service to expose “backend application” 
- Create a ClusterIP Service to connect frontend and backend applications 
- Create a ClusterIP Service to connect the backend with the database. 
- Create a load balancer to expose the frontend application. 
- [Bonus, Optional] - Add a domain (ex. ui.myapp.com and api.myapp.com) to your application 

```

├── Readme.md
├── deploy-backend.yaml
├── deploy-db.yaml
├── deploy-frontend.yaml
├── namespace-finalproject.yaml
├── service-backend-ClusterIP.yaml
├── service-backend-LoadBalancer.yaml
├── service-backend-NodePort.yaml 
├── service-db-ClusterIP.yaml
├── service-frontend-ClusterIP.yaml
├── service-frontend-LoadBalancer.yaml
└── service-frontend-NodePort.yaml

```
![AKS Cluster](./assets/aks_bash.png)

### Useful commands to check the cluster
```
$ kubectl apply -f FILE_NAME.yaml
$ kubectl delete OBJECT OBJECT_NAME -n NAMESPACE
$ kubectl get namespaces
$ kubectl get pods --all-namespaces
$ kubectl get nodes --all-namespaces
$ kubectl get nodes -o wide
$ kubectl get events -n NAMESPACE
$ kubectl get services --all-namespaces
$ kubectl describe service db-service -n postgres
$ kubectl describe service backend-service -n backend
$ kubectl describe service frontend-service -n frontend
$ kubectl describe POD_NAME -n NAMESPACE
$ kubectl logs POD_NAME -n NAMESPACE

```