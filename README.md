# kubernetes

MASTER Components

Controller Manager:
It makes sure that every pod should get number of desired container.
Basically manages actual state and desired state

etcd cluster:

This is kind of storage which stores desired state and current state.
This is outside component, but we won't be operate without this.
This keeps every smallest information about nodes, pods, container
no one can directly access etcd cluster, controller manager communicates with API SERVER and API SERVER communicates with etcd cluster 

Kube Scheduler:

This actually manages desired state of pods.
Increases and decreases number of pods and containers

Again only API SERVER can communicates with kube scheduler

instructions should be written either in yaml or json file , known as manifest file


NODE Components:

POD:

 Smallest unit of kubernetes.
 Containers are part of pods or containers can be created inside pods.
 Ip address always associated with POD and not with Container.
 Any 2 pods can not communicate with each other.
 Usually there should be only 1 container inside 1 pods, 
 but if you want you may create multiple containers.
 PODS can not be recreate .

kube proxy:

This component looks after networking part of kubernetes pods


kubelet :

Kubelets looks after state of pods, and shares information to etcd cluster and then etcd cluster shares with controller manager.
This unit is solely behind management of pods.

container engine inside pods:


MANIFEST.yaml

we create manifest.yml file and applies on k8s cluster.

