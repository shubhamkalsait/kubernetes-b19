# KUBERNETES

## What is Kubernetes?
-  **Kubernetes, often abbreviated as K8s**
-  **It is an open-source container orchestration platform.**
-  **It is designed to automate the deployment, scaling, and management of containerized applications.**

## Why we use Kubernetes?
-  **Kubernetes is a powerful tool for managing containerized applications in production environments.**
-  **Its features address many challenges associated with deploying and maintaining distributed systems**
-  **Key features of Kubernetes include:**
   
   **Container Orchestration :**                                                                                             
              Automates deployment and management of containerized applications.
   
   **Scalability:**                                                                                                          
              Dynamically scales applications based on demand for optimal resource use.
   
   **High Availability:**                                                                                                    
              Ensures reliable application performance by distributing containers across nodes.
   
   **Portability:**                                                                                                         
               Provides a consistent platform across diverse infrastructures and environments.
     
   **Resource Efficiency:**                                                                                                 
               Optimizes resource allocation and scales applications based on utilization.
   
   **Service Discovery and Load Balancing:**                                                                                 
               Facilitates exposing and balancing traffic for applications.
   
   **Community and Ecosystem:**                                                                                              
               benefits from a large, active open-source community and extensive tooling.
   
   **Rolling Updates and Rollbacks:**                                                                                        
                Supports seamless application updates and automatic rollbacks.
   
   **Security and Compliance:**                                           
                Implements features for securing applications and managing access.
   
   **Cost Savings:**
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
