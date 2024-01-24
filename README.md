# KUBERNETES

## What is Kubernetes?
Kubernetes is a powerful tool for managing distributed systems. It handles tasks like scaling, failover, and deployment patterns for your applications. 
Here are some key features:
1.Service Discovery and Load Balancing: Easily expose containers using DNS or IP, with automatic load balancing for stable deployments.
2.Automated Rollouts and Rollbacks: Define and control the desired state of containers, allowing for controlled updates and rollbacks.
3.Automatic Bin Packing: Efficiently allocate CPU and memory resources to optimize container usage on a cluster.
4.Self-Healing: Kubernetes restarts, replaces, or removes containers that fail or don't respond, ensuring continuous availability.
5.Horizontal Scaling: Easily scale your application up or down based on demand.

## Why we use Kubernetes?
 Kubernetes simplifies and automates the management of containerized applications in a scalable, resilient, and efficient manner.
 We use Kubernetes for several reasons:
 1.Deployment Patterns: Kubernetes offers deployment patterns, making it easier to manage the deployment lifecycle of your applications.
 2.IPv4/IPv6 Dual-Stack: Kubernetes supports both IPv4 and IPv6 addresses, accommodating different networking requirements.
 3.Designed for Extensibility: Kubernetes is designed to be easily extended, allowing you to add features to your cluster without modifying the core source code.
 4.Service Discovery and Load Balancing: It simplifies exposing containers and distributes network traffic, ensuring stable deployments through load balancing.

## Architecture of Kubernetes
KUBERNETES CLUSTER ARCHITECTURE - (https://github.com/mehulbisen/kubernetes-b19/assets/147504277/2c120cd6-c4a9-42fc-b4e0-65694b9d7d97)
The architecture of Kubernetes consists of the following key components:
1.Master Node:
    - API Server: Exposes the Kubernetes API and is the entry point for managing the cluster.
    - Controller Manager: Ensures the desired state of the cluster, handling node and pod operations.
    - Scheduler: Assigns work (pods) to nodes based on resource availability and constraints.
2.Node (Minion):
    - Kubelet: Ensures that containers are running on the node and communicates with the master.
    - Kube Proxy: Maintains network rules on nodes, facilitating communication between pods.
3.etcd:
    - Consistent and highly-available key-value store storing cluster configuration and state.
4.Pod:
    - Basic unit of deployment, representing a set of one or more containers sharing the same network and storage.
5.Service:
    - An abstraction to define a logical set of pods and a policy by which to access them.

## Lifecycle of kubernetes
API SERVER --> ETCD --> API SERVER --> SCHEDULER --> API SERVER --> KUBLET --> API SERVER --> ETCD
1.API Server to etcd:
    - The API Server communicates with the etcd key-value store to read or update the cluster's configuration and state.
2.API Server to Scheduler:
    - The API Server sends information to the Scheduler, which decides where to deploy pods based on resource availability and constraints.
3.API Server to Kubelet:
    - The API Server communicates with Kubelet on each node to instruct it on deploying and managing pods.
4.API Server to etcd (again):
     - The API Server updates the etcd store with the current state of the cluster, including any changes made during the previous steps.

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
