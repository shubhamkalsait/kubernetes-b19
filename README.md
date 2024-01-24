# KUBERNETES

## What is Kubernetes?

-->  Kubernetes (sometimes shortened to K8s with the 8 standing for the number of letters between the “K” and the “s”) is an open source system to deploy, scale, and manage containerized applications anywhere.

* Kubernetes manage :-

1] Container management 

2] multi nondes

3] Loadbalansar

4] Autoscaling

5] Security management

6] Autoheling

7] Monitering

8] DNS

## Why we use Kubernetes ?

--> 

1] Standard services like local DNS and basic load-balancing that most application need, and are easy to use.

2] Standard behaviors (e.g. restart this container if it dies) that are easy to invoke, and do most of the work of keeping applications runnig, available, and perfomat. 

3] A standard set of abstract "objects" (called things like "podes," "replicasets," and "deployments") that wrap around containers and make it easy to build configurations around collections of containers.

4] A standard API that applications can call to easily enable more sophisticated behaviors, making it much easier to create applications that manage other applications.



## Architecture of Kubernetes ?

--> <img src="https://media.licdn.com/dms/image/D5612AQFWD2o9vSnA-g/article-cover_image-shrink_720_1280/0/1693947583493?e=1711584000&amp;v=beta&amp;t=J24Pmufx_EVIT-8nP0y4tMpF5TQV3HWgo_aC_Iv75p4" loading="lazy" id="ember36" class="reader-cover-image__img evi-image lazy-image ember-view">

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
