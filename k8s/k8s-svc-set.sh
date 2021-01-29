kubectl create -f ./secret/docker-auth.yaml

kubectl create -f ./deploy/redis-deploy.yaml
kubectl apply -f ./deploy/redis-svc.yaml

kubectl create -f ./deploy/cannon-deploy.yaml
kubectl apply -f ./deploy/cannon-svc.yaml

kubectl create -f ./deploy/titan-deploy.yaml
kubectl apply -f ./deploy/titan-svc.yaml

kubectl create -f ./ingress/ingress-cannon.yaml
kubectl create -f ./ingress/ingress-titan.yaml