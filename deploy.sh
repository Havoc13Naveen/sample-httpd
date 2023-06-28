#!/bin/bash
docker_acc="havoc13/apache"
name=`sudo docker images | grep -i "$docker_acc" | awk -F " " '{print $1}'`
tag=`sudo docker images | grep -i "$docker_acc" | awk -F " " '{print $2}'`
#echo $name:$tag
cat <<EOF
apiVersion: apps/v1
kind: Deployment
metadata:
        name: httpd
spec:
        replicas: 5
        selector:
                matchLabels:
                          app: webserver
        template:
                metadata:
                        labels:
                                app:  webserver
                spec:
                     containers:
                             - name: container
                               image: $name:$tag
                               ports:
                                    - containerPort: 80
EOF
