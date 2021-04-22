kubectl delete deploy phpmyadmin-deployment 
kubectl delete svc/phpmyadmin-svc

eval $(minikube docker-env)

docker build ./srcs/phpmyadmin -t phpmyadmin_image 
kubectl apply -f ./srcs/phpmyadmin/phpmyadmin.yaml

#      kubectl exec -it

