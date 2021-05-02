# Ft_services

#### An introduction to Kubernetes.
#### This project helps to discover cluster management and deployment with Kubernetes. 

The project consists of setting up an infrastructure of different services that are * communicating with each other *. They are nginx, ftps, wordpress, phpmyadmin, mysql, grafana, influxdb and telegraf.

Each service runs in a dedicated container, which are built using Alpine Linux. Each container has its own Dockerfile.
All containers are built at once by script in setup.sh. 

All redicrection to the services are done with a Load Balancer.

