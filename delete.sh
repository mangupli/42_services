kubectl delete deploy wp-deployment 
kubectl delete svc wp-svc

docker build ./srcs/wordpress -t wp_image 
kubectl apply -f ./srcs/wordpress/wp.yaml


