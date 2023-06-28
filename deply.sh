#!/bin/bash
name=`docker images | grep -i "havoc13/httpd" | awk -F " " '{print $1}'`
tag=`docker images | grep -i "havoc13/httpd" | awk -F " " '{print $2}'`
#echo $name:$tag
cat <<EOF
kind: Deployment
apiVersion: apps/v1
metadata: httpd
spec:
    replicas: 4
    selector:
            matchLabels:
	    	       app: httpd-pod
    template:
    	    metadata:
	    	    app: httpd-pod
            spec:
	        containers:
			 - name: container
			   image: echo $name:$tag
			   ports:
			   	- containerPort: 80
EOF
