# KUBERNETES

## What is Kubernetes?
-Kubernetes,also known as K8s, is an open-source system for automating deployment, scaling, and management of      containerized applications.
OR
-Also known as a container orchestration tool, Kubernetes is an open-source container management solution that automates container deployment, scaling, descaling, and load balancing.

-The term kubernetes originates from Ancient Greek, meaning 'helmsman' or 'pilot'

-Essential components of Kubernetes:
1-Cluster: A collection of nodes, or computers, that collaborate to run containerized applications.
2-A pod :  Pod is a collection of one or more containers that have access to the same storage and network.
3-Deployment: A setup that specifies the creation and management of several pods.
4-Service: An abstraction that offers a uniform method of accessing applications that are currently running,        independent of the pods that underpin them.
5-Secret: Safely keeps private data, such as tokens and passwords.
6-Storage: Frequently utilizing third-party solutions like cloud storage, storage offers containerized apps persistent storage.

## Why we use Kubernetes?

1.Container-centric: K8s considers containers to be the basic building block of deployment, enabling microservices architectures and quick upgrades to applications.
2.Automated management: K8s frees developers to concentrate on application logic by automating processes like scaling, deployment, and self-healing.
3.Declarative configuration: You specify the desired appearance of your application, and K8s takes care of the rest.
4.High availability: K8s ensures service continuity even in the event of a node failure by replicating containers among nodes.
5.Scalability: K8s optimizes resource utilization by effortlessly scaling up or down applications in response to demand.
6.Wide-ranging ecosystem: K8s provides a thriving and extensive ecosystem of integrations and solutions to meet a variety of demands.

## Architecture of Kubernetes:-

<img width="543" alt="K8's" src="https://github.com/Pratikesh05/kubernetes-b19/assets/157086376/77a00e4f-1a56-473e-872f-440b3a2e9237">

## Lifecycle of kubernetes:-

<img width="291" alt="lifecycle" src="https://github.com/Pratikesh05/kubernetes-b19/assets/157086376/3a7d817f-3f4c-4d6c-8270-f2841acd4233">

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