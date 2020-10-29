#!/bin/bash

#Author: Serge k
#Date: October 26th

#Clean deployment on kubernetes cluster.

kubectl delete deployment $( kubectl get deployment 2>/dev/null | awk '{print$1}') 2>&1 >/dev/null | mail -s "Deleted Deployments from Kubernetes Cluster" unixclassd1@gmail.com



#####Delete service 

kubectl delete service $(kubectl get service |egrep -v 'kubernetes|NAME'|awk '{print$1}') 2>&1 >/dev/null | mail -s "Deleted Services From kubernetes Cluster" unixclassd1@gmail.com 

exit 0

