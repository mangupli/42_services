kubectl delete deploy ftps-deployment 
kubectl delete svc/ftps-svc

eval $(minikube docker-env)

docker build ./srcs/ftps -t ftps_image 
kubectl apply -f ./srcs/ftps/ftps.yaml

#      kubectl exec -it

