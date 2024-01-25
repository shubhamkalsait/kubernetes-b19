# ##KUBERNETES

### What is Kubernetes?
-Kubernetes,also known as K8s, is an open-source system for automating deployment, scaling, and management of      containerized applications.

OR

-Also known as a container orchestration tool, Kubernetes is an open-source container management solution that automates container deployment, scaling, descaling, and load balancing.

-The term kubernetes originates from Ancient Greek, meaning 'helmsman' or 'pilot'

##Essential components of Kubernetes:

1-> Cluster: A collection of nodes, or computers, that collaborate to run containerized applications.

2-> A pod :  Pod is a collection of one or more containers that have access to the same storage and network.

3-> Deployment: A setup that specifies the creation and management of several pods.

4-> Service: An abstraction that offers a uniform method of accessing applications that are currently running,        independent of the pods that underpin them.

5-> Secret: Safely keeps private data, such as tokens and passwords.

6-> Storage: Frequently utilizing third-party solutions like cloud storage, storage offers containerized apps persistent storage.

### Why we use Kubernetes?

. In production settings, Kubernetes is an effective solution for managing containerized apps.

. Many issues pertaining to the implementation and upkeep of distributed systems are addressed by its features.



. Among Kubernetes' distinguishing qualities are:


1-> Container-centric: K8s considers containers to be the basic building block of deployment, enabling microservices architectures and quick upgrades to applications.

2-> Automated management: K8s frees developers to concentrate on application logic by automating processes like scaling, deployment, and self-healing.

3-> Declarative configuration: You specify the desired appearance of your application, and K8s takes care of the rest.

4-. High availability: K8s ensures service continuity even in the event of a node failure by replicating containers among nodes.

5-> Scalability: K8s optimizes resource utilization by effortlessly scaling up or down applications in response to demand.

6-> Wide-ranging ecosystem: K8s provides a thriving and extensive ecosystem of integrations and solutions to meet a variety of demands.

7->Portability: Offers a unified platform in a variety of contexts and infrastructures.

8->Resource Efficiency: Adjusts applications according to usage and maximizes resource allocation.


### Architecture of Kubernetes:-

Its working is based on nodes. 

It contains two nodes:

A-Master Node: It controls  all activities in Kubernetes

B-Worker Nodes: It completes the task which is given by Master node 

#Master node Structure:-

> API Server: It is used for talking with the worker nodes and giving them required information.

> Controller Manager: It is used for gathering information of nodes and sending that to API Server and also useful for changing the current state of cluster to desired state.

> Scheduler: It is responsible for dispersing workload in the master node and it also tracks the workload on cluster nodes.
> etcd : It stores the configuration information required by nodes in the cluster.

#Worker node components:

> kublet : It actually runs the pods and updates node status. Starts and stops pods as directed by the Scheduler.

> kube-proxy: Exposes services and routes network traffic to the proper resource on the node.

> Container Runtime:  It is used for running and managing containers lifecycle.


<img width="551" alt="Screenshot 2024-01-25 205130" src="https://github.com/Pratikesh05/kubernetes-b19/assets/157086376/fa06b3db-35a6-4d6b-995f-0d2b12013dd3">


### Lifecycle of kubernetes:-


<img width="543" alt="K8's" src="https://github.com/Pratikesh05/kubernetes-b19/assets/157086376/b4b90505-54cc-4313-8d83-742f0898138d">


>> A fresh pod creation request is made by a user or application.

>> To obtain information about accessible nodes, the central control point, the API server, talks with the permanent data store, ETCD.

>> In order to select the optimal node for the pod, the scheduler—which is in charge of pod placement—evaluates resource availability and limitations.

>>The agent operating on the chosen node, the kubelet, receives notification from the API server regarding the pod scheduling decision.

>> On that node, the kubelet builds the pod's containers and oversees its lifespan.

>> The kubelet updates the API server on the progress of the pod by sending status updates.

>> To guarantee that all components see the updated cluster state data consistently, the API server saves it in ETCD.

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