kubectl delete deploy grafana-deployment 
kubectl delete svc/grafana-svc

eval $(minikube docker-env)

docker build ./srcs/grafana -t grafana_image 
kubectl apply -f ./srcs/grafana/grafana.yaml

#kubectl exec -it **podname** sh

