#minikube start --vm-driver=virtualbox
minikube addons enable metallb
eval $(minikube docker-env)
docker build ./srcs/nginx -t nginx_image 
kubectl apply -f ./srcs/configmap.yaml
kubectl apply -f ./srcs/nginx/nginx.yaml
minikube dashboard




