# KUBERNETES

## What is Kubernetes?
-  **Kubernetes, often abbreviated as K8s**
-  **It is an open-source container orchestration platform.**
-  **It is designed to automate the deployment, scaling, and management of containerized applications.**
---
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
   
   <ins>**Portability:**</ins>                                                                                                
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
                contributes to savings through optimized resource use and automation.
---
## Architecture of Kubernetes
-   **Kubernetes Cluster mainly consists of a Control Plane and Worker Machines called Nodes**
-   **It is also called as Master-Slave system**
-   **We can create single or multiple master nodes for high availability and scalability.**
-   **We also can create multiple slave nodes to handle worl load**
-   **key components and architecture of Kubernetes:**

     <ins>**API Server:**</ins>
     -   The API Server acts as the central management entity and the frontend interface for the Kubernetes control plane.
     -   It processes RESTful requests to manage cluster resources and updates the corresponding objects in etcd.
     -   It serves as the communication hub for other control plane components to interact and manage the cluster.
               
     <ins>**ETCD:**</ins>
     -   etcd is a lightweight, distributed key-value store that securely and consistently stores the critical data of the Kubernetes cluster.
     -   It holds the cluster's configuration and state, including information about nodes, pods, configurations, secrets, and the state of workloads.
       
     <ins>**Scheduler:**</ins>
     -   The Scheduler is responsible for assigning workloads, specifically pods, to appropriate nodes.
     -   It selects nodes for new pods based on resource requirements, quality of service requirements, affinity specifications, and other criteria.
       
     <ins>**Controller Manager:**</ins>
     -   This component runs various controller processes in the background to regulate the state of the cluster and handle routine tasks.
     -   It helps in maintaining the desired state of the cluster.
       
     <ins>**kublet**:</ins>
     -   The kubelet is responsible for executing commands that come from the Kubernetes control plane, including instructions from the scheduler.
     -   It communicates with the control plane and ensures that containers within pods are running as expected.
       
     <ins>**Kube-proxy:**</ins>
     -   Kube-proxy maintains network rules on nodes, allowing communication between Pods.
     -   It handles network forwarding, load balancing, and service-related network tasks.
       
     <ins>**Container Engine:**</ins>
     -   The container engine on a worker node is responsible for executing and managing containers.
     -   It provides the runtime environment for running containerized applications within the Kubernetes cluster, handling tasks such as container creation, start-up, and resource isolation.
       
     <ins>**POD:**</ins>
     -   A Pod is the smallest deployable unit in Kubernetes.
     -   It's like wrapper around container.
     -   The worker node executes and hosts these Pods, running the specified containers within them.
<p align="center">
    <img src="https://kubernetes.io/images/docs/kubernetes-cluster-architecture.svg"
 width="700" height="380">
</p>

---

## Lifecycle of kubernetes
-   A user or application initiates a request to create a new pod.
-   The API server, the central control point, communicates with ETCD, a persistent data store, to gather information about available nodes.
-   The scheduler, responsible for pod placement, analyzes resource availability and constraints to choose the best node for the pod.
-   The API server informs the kubelet, the agent running on the selected node, about the pod scheduling decision.
-   The kubelet creates the pod's containers and manages its lifecycle on that node.
-   The kubelet sends status updates back to the API server about the pod's progress.
-   The API server stores the updated cluster state information in ETCD, ensuring a consistent view for all components.
<p align="center">
    <img src="https://k21academy.com/wp-content/uploads/2020/06/Kubernetes_Architecture-1.png"
 width="700" height="380">
</p>
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
Intra-pod communication: communication between containers within the same pod
Inter-pod communication: communication between different pods in the cluster
kubectl expose pod <pod-name> --name <service-name> --port <target-port>   # to exposes the Pod within the cluster and create a ClusterIP
kubectl get service   # to list the services
kubectl delete <resource-type> <resource-name>   # to delete resources(pod, service, etc..)
kubectl expose pod <pod-name> --name <service-name> --port <target-port> --type NodePort # to exposes the Pod outside the cluster and create a Nodeport
kubectl expose pod <pod-name> --name <service-name> --port <target-port> --type NodePort # to distribute traffic across multiple nodes and create a LoadBalancer
```
