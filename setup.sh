minikube start --vm-driver=virtualbox
minikube addons enable metallb

eval $(minikube docker-env)

docker pull metallb/speaker:v0.8.2
docker pull metallb/controller:v0.8.2

docker build ./srcs/nginx -t nginx_image 
kubectl apply -f ./srcs/configmap.yaml
kubectl apply -f ./srcs/nginx/nginx.yaml
docker build ./srcs/wordpress -t wp_image 
kubectl apply -f ./srcs/wordpress/wp.yaml
docker build ./srcs/phpmyadmin -t phpmyadmin_image
kubectl apply -f ./srcs/phpmyadmin/phpmyadmin.yaml
docker build ./srcs/mysql -t mysql_image
kubectl apply -f ./srcs/mysql/mysql.yaml
docker build ./srcs/grafana -t grafana_image
kubectl apply -f ./srcs/grafana/grafana.yaml
docker build ./srcs/influxdb -t influxdb_image
kubectl apply -f ./srcs/influxdb/influxdb.yaml
docker build ./srcs/telegraf -t telegraf_image
kubectl apply -f ./srcs/telegraf/telegraf.yaml
docker build ./srcs/ftps -t ftps_image
kubectl apply -f ./srcs/ftps/ftps.yaml

minikube dashboard
