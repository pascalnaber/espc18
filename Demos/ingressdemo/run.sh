kubectl create namespace ingressdemo
kubectl create secret docker-registry clouddemoimages --namespace ingresshttproutingdemo --docker-server=https://clouddemo.azurecr.io --docker-username=clouddemo --docker-password=yoursecret --docker-email=pnaber@xpirit.com

helm install stable/nginx-ingress --namespace kube-system --set controller.replicaCount=2

kubectl apply -f ./Demos/ingressdemo/secret.yaml

kubectl apply -f ./Demos/ingressdemo/leaderboardapi-deployment.yaml
kubectl apply -f ./Demos/ingressdemo/leaderboardapi-service.yaml
kubectl apply -f ./Demos/ingressdemo/gamingwebapp-deployment.yaml
kubectl apply -f ./Demos/ingressdemo/gamingwebapp-service.yaml

kubectl apply -f ./Demos/ingressdemo/gamingwebapp-ingress.yaml
kubectl apply -f ./Demos/ingressdemo/clippy.yaml

kubectl delete ingress gamingwebapp-ingress -n ingressdemo
kubectl delete ingress party-clippy -n ingressdemo