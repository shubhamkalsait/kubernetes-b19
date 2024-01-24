# KUBERNETES

## What is Kubernetes?
-  **Kubernetes, often abbreviated as K8s**
-  **It is an open-source container orchestration platform.**
-  **It is designed to automate the deployment, scaling, and management of containerized applications.**

## Why we use Kubernetes?
-  **Kubernetes is a powerful tool for managing containerized applications in production environments.**
-  **Its features address many challenges associated with deploying and maintaining distributed systems**
-  **Key features of Kubernetes include:**
   
   <ins>**Container Orchestration :**</ins>                                                                                  
              Automates deployment and management of containerized applications.
   
   <ins>**Scalability:**</ins>                                                                                               
              Dynamically scales applications based on demand for optimal resource use.
   
   <ins>**High Availability:**</ins>                                                                                         
              Ensures reliable application performance by distributing containers across nodes.
   
   <ins>**Portability:**<ins>                                                                                                
               Provides a consistent platform across diverse infrastructures and environments.
     
   <ins>**Resource Efficiency:**</ins>                                                                                       
               Optimizes resource allocation and scales applications based on utilization.
   
   <ins>**Service Discovery and Load Balancing:**</ins>                                                                      
               Facilitates exposing and balancing traffic for applications.
   
   <ins>**Community and Ecosystem:**</ins>                                                                                   
               benefits from a large, active open-source community and extensive tooling.
   
   <ins>**Rolling Updates and Rollbacks:**</ins>                                                                             
                Supports seamless application updates and automatic rollbacks.
   
   <ins>**Security and Compliance:**</ins>                                           
                Implements features for securing applications and managing access.
   
   <ins>**Cost Savings:**</ins>
                Contributes to savings through optimized resource use and automation.

## Architecture of Kubernetes

## Lifecycle of kubernetes

## K8s Cluster
- Minikube
- Kind
- Kubeadm
- EKS
- GKE
- AKS
- ...

## Kubectl Commands
Ref: https://www.bluematador.com/learn/kubectl-cheatsheet

```shell
kubectl cluster-info    # to get cluster information
kubectl api-resources   # to list available k8s objects
kubectl api-version     # to list available api versions
kubectl get nodes       # to get list of nodes
kubectl get nodes -o wide   # to get IP of the nodes
kubectl get pods        # to get list of pods
kubectl get pods -o wide    # to get IP of the pods
```
__prathamesh__
