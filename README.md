# Ft_services

#### An introduction to Kubernetes.
#### This project helps to discover cluster management and deployment with Kubernetes. 

The project consists of setting up an infrastructure of different services that are *communicating with each other*. They are nginx, ftps, wordpress, phpmyadmin, mysql, grafana, influxdb and telegraf.

Each service runs in a dedicated container, which are built using Alpine Linux. Each container has its own Dockerfile.

All redicrection to the services are done with a Load Balancer.

Scripts:

__setup.sh__ -> this will setup all applications
__init_minikube.sh__ -> this will download minikube on mac (first installing brew if not dowloaded yet) and moving minikube to goinfre dicrectory *(useful for 42 school students)*
__restart_one.sh__ -> deleting and restarting only one pod
__delete_one.sh__ -> deletes all pods 

