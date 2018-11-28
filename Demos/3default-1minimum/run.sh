kubectl get nodes

kubectl get pods

kubectl apply -f ./Demos/3Default-1minimum/leaderboardapi-deployment.yaml

kubectl get pods -o wide

kubectl proxy

# kill a pod

# change replicas

kubectl apply -f ./Demos/3Default-1minimum/leaderboardapi-deployment.yaml

kubectl get pods -o wide

kubectl port-forward leaderboard-api-554f96c786-s4zrf 9292:80

http://localhost:9292/swagger/