kubectl delete deploy nginx-deployment 
kubectl delete svc/nginx-svc

eval $(minikube docker-env)

docker build ./srcs/nginx -t nginx_image 
kubectl apply -f ./srcs/nginx/nginx.yaml

#      kubectl exec -it

