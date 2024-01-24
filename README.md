# KUBERNETES

## What is Kubernetes?
Ans: Kubernetes is an open-source Container Management tool that automates container     deployment, container scaling, descaling, and container load balancing (also called a container orchestration tool). It is written in Golang and has a vast community because it was first developed by Google and later donated to CNCF (Cloud Native Computing Foundation). Kubernetes can group ‘n’ number of containers into one logical unit for managing and deploying them easily

## Why we use Kubernetes?
Ans:Benefits of kubernetes 
(i) High Availability
    In Deployment, High availability refers to the ability of an application to be accessible to the users even when the servers are facing disruptions like a server crash. Using Kubernetes or Container Orchestration in general, we can make our applications achieve high availability where even if our Pod dies,another Pod can be created to take its place in the Cluster.
(ii)Self-Healing
    In terms of deployment, Self healing is a feature that allows the system to notice if there are any failures or issues in the system and automatically recover it without needing any intervention from the administrater
(iii)Monitoring
    Monitoring mode in Kubernetes is important because it allows you to detect and resolve issues with the cluster and its applications before they become major problems. It also helps you to optimize the performance of the cluster and its applications. Additionally, monitoring mode can help you to understand the overall health and utilization of the cluster, and to make informed decisions about scaling and resource allocation.
(iv) Autoscaling
    The main point of the cloud and Kubernetes is the ability to scale in the way that we can be able to add new nodes if the existing ones get full and at the same if the demand drops we should be able to delete those nodes . There are three different methods of Kubernetes autoscaling:
  a)Horizontal Pod Autoscaler(HPA)
  b)Vertical Pod Autoscaler(VPA)
  c)Cluster Autoscaler(CA)
(v)Load balancer
   Service discovery and load balancing Kubernetes can expose a container using the DNS name or using their own IP address. If traffic to a container is high, Kubernetes is able to load  balance and distribute the network traffic so that the deployment is stable. 
(vi)Multi-nodes
    A multi-node cluster is composed of at least one control plane and one worker node. You can use any node as the taskbox to carry out the installation task. You can add additional nodes based on your needs (for example, for high availability) both before and after the installation. 

## Architecture of Kubernetes
Ans: Kubernetes Cluster mainly consists of Worker Machines called Nodes and a Control        Plane.In a cluster, there is at least one worker node.The Kubectl CLI communicates with the Control Plane and Control Plane manages the Worker Nodes.
 * Control Plane Components
  It is basically a collection of various components that help us in managing the overall health of a cluster.  For example, if you want to set up new pods, destroy pods, scale pods, etc. Basically, 4 components run on Control Plane:

i)API server
  It is like an initial gateway to the cluster that listens to updates or queries via CLI like Kubectl. Kubectl communicates with API Server to inform what needs to be done like creating pods or deleting pods etc. It generally validates requests received and then forwards them to other processes. No request can be directly passed to the cluster, it has to be passed through the API Server.
ii)Scheduler
  When API Server receives a request for Scheduling Pods then the request is passed on to the Scheduler. It intelligently decides on which node to schedule the pod for better efficiency of the cluster.
iii)Controller-Manager
  The kube-controller-manager is responsible for running the controllers that handle the various aspects of the cluster’s control loop.It is use for mainting actual state vs desire state
iv)ETCD
  It is a key-value store of a Cluster. The Cluster State Changes get stored in the etcd. it tells the Scheduler and other processes about which resources are available and about cluster state changes.

* Node Components
These are the nodes where the actual work happens. Each Node can have multiple pods and pods have containers running inside them. There are 3 processes in every Node that are used to Schedule and manage those pods.
i)Container engine
 A container runtime is needed to run the application containers running on pods inside a pod. Example-> Docker
ii)kubelet
kubelet interacts with both the container runtime as well as the Node. It is the process responsible for starting a pod with a container inside.
iii)kube-proxy
It is the process responsible for forwarding the request from Services to the pods. It has intelligent logic to forward the request to the right pod in the worker node
iv)POD
A pod is the smallest unit that exists in Kubernetes. A specific pod can have one or more applications.It is a deployable entity of kubernetes

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
