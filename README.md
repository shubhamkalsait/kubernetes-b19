# KUBERNETES

## What is Kubernetes?
Kubernetes is an open-source container orchestration (management) system for automating software deployment, scaling, and management.
## Why we use Kubernetes?
There are several things we can manage automatically in kubernetes such as ,
  1) Container management
  2) Load balancer
  3) Auto-scaling
  4) Security management
  5) Auto healing & Auto restart
  6) Monitoring
  7) Standard DNS service
  8) Multi-node cluster
## Architecture of Kubernetes
#### Cluster :-
  cluster is a group of nodes, it works on a master-slave system.
  
![architecure of kubernetes](https://github.com/RohanLib123/kubernetes-b19/assets/109272497/16446bcc-dc3c-4738-996d-0baa7a67acf1)
### # Component of Control Plane / Master Node :- 
#### 1) API Server → 
All communication happens inside the cluster with the help of API. API server manages this API network throughout the cluster.

#### 2) ETCD → 
It is like a database, It holds data in key value format. It is responsible for storing the state of the cluster, that includes no. of nodes available, no. of pods running on each node & etc.

#### 3) Schedule → 
It is responsible to schedule commands on particular worker node.

#### 4) Controller manager →
It is responsible for maintaining Actual state VS Desired state. It manages all the controllers in kubernetes cluster.

### # Component of Slave Node / Worker Node :-
#### 1) Kublet → 
It is responsible to execute the command which is come from scheduler.
Kublet make sure that containers are running in a pod
		
#### 2) Kube Proxy →
It allows network communication inside the cluster.

#### 3) Container engine →
To create & run the container.

#### 4) Pods →
Pods are deployable entity of the kubernetes. Pods is wrapper around the container.


## Lifecycle of kubernetes
![kubernetes lifecycle](https://github.com/RohanLib123/kubernetes-b19/assets/109272497/f3b403c2-2e4d-4819-bf07-ff7c6e6ff56a)

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
