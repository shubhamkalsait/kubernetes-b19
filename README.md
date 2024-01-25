# KUBERNETES

## What is Kubernetes?

-->   Kubernetes, often abbreviated as K8s, is an open-source container orchestration platform designed to automate the deployment, scaling, and management of containerized applications. Containers are lightweight, portable, and consistent environments that package an application and its dependencies, ensuring that it runs reliably across various computing environments.  
      Kubernetes (sometimes shortened to K8s with the 8 standing for the number of letters between the “K” and the “s”) is an open source system to deploy, scale, and manage containerized applications anywhere.

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

### Master Node :-

1] API Server :- 

* Serves as the entry point for all administrative tasks and management of cluster objects.
* All the communication appens inside the cluster is with the help of API . API server manages this API communication cluster.

2] ETCD :- 

* A distributed key-value store that stores that stores the configuration data of the cluster, representing the overall state of the cluster at any given point.
* It like database it hold data in key value formate. ETCD is responcible to store of the cluster that includes number of nodes available number of pods runnig on each nodes.

3] Scheduler :- 

* Assigns work to nodes based on resource availability and constraints.
* Scheduler is respocible to schedule commands on perticuler worker node.

4] Controller Manager :- 

* Enforces cluster state and manages various controllers ( e.g replication controller, endpoint controller ).
* Is responsible for maintaining actual state & desire state. It manage all the controller is kubernets clusters.

### Worker Node  ( Minion/Node ) :- 

1] Kubelet :- 

* An agent that runs on each node and communicates with the master node. it ensures that containers are running in a pod. 
* It responsible to excuter the command which is came from sheduler. kublet make sure that container are runnig in a pod.

2] Kub-Proxy :- 

 + Maintains network rules on nodes, enabling communication between pods and external network.
 + Kube-proxy allow nerwork communication inside the cluster.

3] Container Engine :- 

+ To create container as run.

4] POD :- 

+ The smallest and simplest unit in the kubernetes object model. it represents a single instance of a runnig process in a cluster.
+ Pod are deployment entity of the kubernets. Pod is rapper around the container.


## Lifecycle of kubernetes

--> 

1] Define Application :- Developes define the application and its components using kubernetes manifests (YAML files) that describe resources such as Podes, Services, Deployments,ConfigMaps, and more.

2] Containerization :- Containerize the application by creating Docker images for each component. These images are stored in container registries.

3] Cluster Provisioning :- Set up a Kubernetes cluster, either on-permises or in the cloud with the neccessary nodes, networking, and storage resources.

4] Deploy Application :- Use Kubernetes manifests or higher-level abstractions like deployments to deploy the application to the cluster. kubernetes takes care of scheduling pods, creating necessary resources, and ensuring the desired state is achieved.

5] Pod Scheduling :-  The kubernetes scheduler determines where to place pods based on resource requirements, node availability, and other constraints.

6] Pod Initialization :- Containers within pods are initialized, and theif lifecycles are managed by the kubelet on each node.

7] Service Exposure :- Expose the application to the external world using kubernetes services or ingress resources. services provide stable endpoints for communication.

8] Scale and Autoscale :- Adjust the number of replicas for a Deployment or Replicaset to scale the application horizontally. kubernetes can also automatically scale based on resource metrics.

9] Monitoring and Logging :- Implement monitoring and logging solutions to observe the health and performance of the application. Kubernetes provides integration with tools like Prometheus and grafana.

10] Updates and Rollbacks :- Make chages to the application by updating kubernetes manifests or using higher-level controllers like deployments. kubernets supports rolling updates and rollbacks to ensure minimal downtime. 

11] Persistent Storage :- If the application requires persistent storage, configure kubernetes volumes or persistent volume claims to manage data storage across pod restarts.


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
