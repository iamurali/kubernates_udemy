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

