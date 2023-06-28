#!/bin/bash
tag=`docker images |grep -i "havoc13/httpd" | awk -F " " '{print $2}'`
echo "the tag of docker images is" $tag
tags=$(echo "$tag + 1" | bc)
echo "new tag" $tags
sudo docker build -t havoc13/httpd:$tags -f dock .
sudo docker push havoc13/httpd:$tags
sudo docker rmi havoc13/httpd:$tag
