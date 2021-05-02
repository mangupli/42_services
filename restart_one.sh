kubectl delete deploy influxdb-deployment 
kubectl delete svc/influxdb-svc

eval $(minikube docker-env)

docker build ./srcs/influxdb -t influxdb_image 
kubectl apply -f ./srcs/influxdb/influxdb.yaml

#kubectl exec -it **podname** sh

