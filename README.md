# KUBERNETES

## What is Kubernetes?
      - Kubernetes is an open source orchestration tool.
      - Kubernetes is an open-source platform designed to automate the deployment, scaling, and management containerized applications

## Why we use Kubernetes?
      - Organizations use Kubernetes for several reasons, as it offers a range of benefits that streamline the deployment, management, and scaling of containerized applications. Here are some key reasons why Kubernetes is widely adopted:
         = Container Orchestration :- Kubernetes excels at orchestrating containers, providing a platform to automate the deployment, scaling, and operation of application containers. This helps in efficiently managing and coordinating complex applications made up of multiple containers.

         = Scalability :- Kubernetes allows for easy scaling of applications by adding or removing containers based on demand. This scalability is crucial for handling varying workloads and ensuring optimal resource utilization.

         = High Availability and Reliability :- Kubernetes is designed to enhance the reliability of applications. It automatically detects and replaces failed containers or nodes, ensuring that applications remain available even when there are hardware failures or other issues.
         
         = Resource Efficiency :- With Kubernetes, resource allocation is optimized. It ensures that applications get the resources they need without wasting resources, leading to better overall efficiency in the data center.
         
         = Consistent Deployment :- Kubernetes provides a consistent environment for deploying and running applications across different infrastructure and cloud providers. This consistency reduces the risk of errors caused by variations in the underlying infrastructure.
         
         = Declarative Configuration :- Kubernetes allows users to declare the desired state of their applications through configuration files. The system then works to bring the actual state in line with the declared state, simplifying application management.
         
         = Rolling Updates and Rollbacks :- Kubernetes supports rolling updates, allowing for the seamless deployment of new versions of applications without downtime. In case of issues, it also supports easy rollbacks to a previous, stable version.
         
         = Service Discovery and Load Balancing :- Kubernetes provides built-in mechanisms for service discovery and load balancing. This ensures that network traffic is efficiently distributed among application instances, promoting better performance and responsiveness.
         
         = Community and Ecosystem :- Kubernetes has a vibrant and active community, and it has become the standard for container orchestration. This means there is a wealth of knowledge, support, and a growing ecosystem of tools and integrations around Kubernetes.
         
         = Multi-Cloud and Hybrid Cloud Support :- Kubernetes is cloud-agnostic, meaning it can run on various cloud providers as well as on on-premises hardware. This flexibility is valuable for organizations with multi-cloud or hybrid cloud strategies. 

## Architecture of Kubernetes
      - The Architecture of Kubernetes consists of two nodes "Master Node(Control Plane)" & "Worker Node"
       
         = Master Node (Control Plane) :- The master node is the control center of the Kubernetes cluster. It oversees the entire cluster and makes decisions about the state of the applications. The key components on the master node include:
                ~ API Server :-  Exposes the Kubernetes API and is the entry point for all the commands used to control the cluster.
                ~ Controller Manager :- Ensures that the desired state of the cluster matches the actual state by controlling various controllers (e.g., replication controller, endpoint controller).
                ~ Scheduler :- Assigns work (pods) to nodes based on resource availability and other constraints.
                ~ etcd: A distributed key-value store that stores the configuration data of the cluster. It serves as the single source of truth for the cluster's state.

         = Worker Node :- Nodes are the worker machines where containers are deployed and run. Each node runs the necessary services to communicate with the master node and manage containers. Key components on a node include:
                ~Kubelet :- Listens for instructions from the master node and ensures that containers within pods are running as expected on the node.
                ~Container Engine :- The software responsible for running containers (e.g., Docker, containerd).
                ~Kube Proxy :- Maintains network rules on nodes, enabling communication between pods and external network traffic.
                ~Pods :- The smallest deployable units in Kubernetes are pods. A pod is a logical group of one or more containers that share the same network namespace and storage. Containers within a pod work together and share resources. Pods are scheduled onto nodes.
  ![architecrure of kubernetes](https://www.cncf.io/wp-content/uploads/2020/09/Kubernetes-architecture-diagram-1-1-1024x698.png)

## LIFECYCLE OF KUBERNETES
    - The lifecycle of a Kubernetes application involves various stages, from creation to deployment, scaling, updating, and eventual termination. Let's break down the typical stages in the lifecycle of a Kubernetes application:
         = Definition (YAML Configuration) :- The first step is defining the application's desired state using YAML configuration files. This includes specifying the number of replicas, container images, resource requirements, network configurations, and other settings.
         = Creation (kubectl apply) :- Once the YAML configuration is ready, it is applied to the Kubernetes cluster using the kubectl apply command. This creates the necessary resources (pods, services, etc.) based on the specified configuration.
         = Pod Scheduling :- The scheduler component in the Kubernetes master node decides on which nodes (worker machines) to run the pods based on resource availability, constraints, and other factors. Pods are the basic building blocks that encapsulate one or more containers.
         = Running Containers :- The kubelet on each node ensures that the containers within the pods are running as per the desired state specified in the configuration. Container runtimes (e.g., Docker, containerd) are responsible for actually starting and managing the containers.
         = Service Availability :- Services, which define sets of pods and how to access them, provide a stable endpoint for applications. These services enable communication between different parts of the application, both internally and externally.
         = Scaling (kubectl scale) :- If there's a need to scale the application, the user can adjust the desired number of replicas using the kubectl scale command. Kubernetes will automatically handle the creation or termination of pods to meet the new desired state.
         = Updating (kubectl set image or Deployment) :- To update the application with a new version or configuration, users can modify the YAML files or use commands like kubectl set image or work with higher-level abstractions like Deployments. Kubernetes will perform rolling updates, ensuring zero-downtime deployments by gradually replacing old pods with new ones.
         = Monitoring and Logging :- Throughout the application's lifecycle, monitoring tools can be employed to track performance, resource usage, and potential issues. Logging mechanisms capture events and logs from containers, helping with troubleshooting and analysis.
         = Maintenance and Patching :- Periodically, maintenance tasks or security patches may require updates to the application or underlying infrastructure. Kubernetes allows for these updates with minimal disruption, often through strategies like canary deployments or blue-green deployments.
         = Scaling Down and Termination :- If demand decreases or the application is no longer needed, users can scale down or delete resources using kubectl delete commands. Kubernetes gracefully terminates pods and associated resources, ensuring a clean shutdown.
         = Termination (kubectl delete or Helm uninstall) :- When an application is no longer required, users can use commands like kubectl delete or tools like Helm to uninstall and clean up all associated resources. Kubernetes ensures that resources are terminated in an orderly manner.   
         ![lifecycle of kubernetes](https://cdn-images-1.medium.com/v2/resize:fit:1500/1*WDJmiyarVfcsDp6X1-lLFQ.png)

## K8S CLUSTER
    = Minikube :- Minikube is a tool that allows you to run a single-node Kubernetes cluster locally on your machine. It's useful for development, testing, and learning Kubernetes without the need for a full-scale cluster.
    = Kind (Kubernetes in Docker) :- Kind is a tool for running local Kubernetes clusters using Docker container nodes. It enables easy testing and development of Kubernetes configurations and applications.
    = Kubeadm :- kubeadm is a command-line tool that helps with the bootstrap process of setting up a basic Kubernetes cluster. It simplifies the installation process by automating many of the manual steps required to configure a cluster.
    = EKS (Amazon Elastic Kubernetes Service) :- EKS is a managed Kubernetes service provided by Amazon Web Services (AWS). It allows you to run Kubernetes clusters without managing the underlying infrastructure, making it easier to deploy and scale containerized applications on AWS.
    = GKE (Google Kubernetes Engine) :- GKE is a managed Kubernetes service offered by Google Cloud Platform (GCP). It provides a fully managed environment for deploying, managing, and scaling containerized applications using Kubernetes.
    = AKS (Azure Kubernetes Service) :- AKS is a managed Kubernetes service provided by Microsoft Azure. It simplifies the deployment, management, and scaling of containerized applications on Azure, abstracting away the complexities of infrastructure management.         

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
