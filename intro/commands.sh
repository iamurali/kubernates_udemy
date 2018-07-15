# getting pds
kubectl get pods

# port forwarding
kubectl port-forward pod_name port1:port2

# describe pods of tomcat container
kubectl describe pods tomcat-deployment

# describe a pod with file
kubectl describe -f intro/tomcat_deployment.yml

# describe pod by label
kubectl describe po -l tomcat

# apply the yml
kubectl apply -f intro/tomcat_deployment.yml

# get all api versions
kubectl api-versions

# get pod by the deployment yml
kubectl get -f intro/tomcat_deployment.yml


# =====> scalling

kuberctl scale --replicas=4 deployment/tomcat_deployment

# =====> Creating load balancer
kubectl expose deployment tomcat_deployment --type=LoadBalancer --port=8080 --targer-port=8080 --name tomcat-load-balancer

# =====> load balancer configs
kubectl describe services tomcat-load-balancer

# =====> rollout set
kubectl rollout status deployments tomcat-deployment

# =====> to get the rollout history
kubectl rollout history deployments tomcat-deployment

# =====> To get specific rollout details
kubectl rollout history deployments tomcat-deployment --revision=<revisionNumber>

# =====> to update the image
kubectl set image deployment/tomcat-deployment tomcat=tomcat:9.0.1



