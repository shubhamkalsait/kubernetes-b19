# KUBERNETES

## What is Kubernetes?
- Kubernetes is an open-source container orchestration platform designed to automate the deployment, scaling, and management of containerized applications.

 - It was originally developed by Google and is now maintained by the Cloud Native Computing Foundation (CNCF).
 - It organizes machines into clusters, efficiently distributing and managing containerized applications for scalability and reliability.

---

## Why we use Kubernetes?
- Here are some key reasons why Kubernetes is widely adopted:

1. **Container Orchestration:**
   - Kubernetes automates the deployment, scaling, and management of containers. It streamlines complex containerized application workflows, making them easier to deploy and maintain.
2. **Auto Scaling :**
   - Kubernetes provides efficient scaling of applications. It can automatically scale the number of application instances based on demand, ensuring optimal resource utilization
     
3. **Load Balancing :**
   - Kubernetes offers automatic load balancing for services, ensuring even distribution of incoming traffic among multiple pods for enhanced performance and reliability.
4. **Storage orchestration :**
   - Kubernetes allows you to automatically mount a storage system of your choice, such as local storage, public cloud providers, and more.
5. **Auto Healing and Auto Restart :**
   - Kubernetes automatically detects and replaces failed containers or nodes, contributing to the system's resilience. This feature helps maintain the desired state of applications, minimizing downtime by ensuring continuous availability.
6. **Automated Rollbacks :**
   - Kubernetes supports automated rollbacks, allowing for quick and seamless reverting to a previous stable version of an application in case of deployment issues or unexpected behavior.
7. **Security Management :**
   - Kubernetes provides a secure mechanism for managing sensitive information such as passwords, API keys, and certificates through its Secrets API.
   - This ensures that confidential data is stored, distributed, and accessed in a secure manner within the cluster.
<p align="center">
<img src="https://assets-global.website-files.com/615f5935af74848be6f33e1f/632df5fd2902767a4323dd5e_Storage%20orchestration.jpg"  width="700" height="300">
</p>

---
     
## Architecture of Kubernetes
- The combination of master nodes (control plane) and worker nodes forms the foundation of a Kubernetes cluster. Worker nodes handle the execution of containerized applications, while the master node manages and orchestrates their deployment, scaling, and overall state within the cluster.
  
- **Master Node :**
   - In Kubernetes, the "master node" is a key cluster node hosting control plane components. It manages the overall state, making decisions, responding to events, and maintaining the desired system state for effective container orchestration.
   - The main control plane components running on the master node include :
 
  - **API Server :**
     - the API server acts as the central communication hub for the Kubernetes cluster, handling requests, validating and authorizing actions, updating the cluster's state, and serving as the primary interface for cluster management.
       
  - **ETCD :**
      - A distributed key-value store that serves as the primary data store for the cluster.
      - Stores configuration data and the state of the entire cluster.
        
  - **Scheduler :**
       - scheduler is responsible to schedule commands on particular woker node.
       - It Assigns work (containers) to nodes based on resource availability and constraints.
       - Ensures optimal distribution of workloads across the cluster.
   - **Controller Manager :**
       - Monitors the state of the cluster through the API server.
       - Ensures that the current state matches the desired state, with controllers for nodes, replication, endpoints, and more.

- **Worker node :**
    - A worker node in Kubernetes executes containerized applications, hosting pods and handling the runtime environment, network rules, and communication with the master node.
    - It forms an integral part of the cluster's infrastructure for workload execution.
    - the key components of work node includes :
      
  - **Kubelet :**
       - The kubelet is responsible for executing commands that come from the Kubernetes control plane, including instructions from the scheduler.
       - The Kubelet is an agent running on each worker node.
       - It communicates with the control plane and ensures that containers within pods are running as expected.
  - **Kube Proxy :**
       - Kube Proxy, is responsible for facilitating network communication within the Kubernetes cluster.
       - It enables communication between pods across the cluster.
  - **Container Engine :**
       - The container engine on a worker node is responsible for executing and managing containers.
       - It provides the runtime environment for running containerized applications within the Kubernetes cluster, handling tasks such as container creation, start-up, and resource isolation.
  - **POD :**
       - Pod is the smallest deployable entity of kubernetes.
       - It's like wrapper around container.
       - The worker node executes and hosts these Pods, running the specified containers within them.
---

 
## Lifecycle of kubernetes 

- core orchestration process that unfolds within a Kubernetes cluster when a new pod is deployed is given below :
     - A user or application initiates a request to create a new pod.
     - The API server, the central control point, communicates with ETCD, a persistent data store, to gather information about available nodes.
     - The scheduler, responsible for pod placement, analyzes resource availability and constraints to choose the best node for the pod.
     - The API server informs the kubelet, the agent running on the selected node, about the pod scheduling decision.
     - The kubelet creates the pod's containers and manages its lifecycle on that node.
     - The kubelet sends status updates back to the API server about the pod's progress.
     - The API server stores the updated cluster state information in ETCD, ensuring a consistent view for all components.

    
    <p align="center">
    <img src="https://github.com/Akshata-07/Akshata-Backup/blob/main/lifecycle-of-pod-kubernetes.png"  width="700" height="380">
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
```
