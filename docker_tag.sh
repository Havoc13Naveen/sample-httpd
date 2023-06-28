#!/bin/bash
#set -x
docker="havoc13/apache"

tag=`sudo docker images |grep -i "$docker" | awk -F " " '{print $2}'`
echo "the tag of docker images is" $tag
tags=$(echo "$tag + 1" | bc)
echo "new tag" $tags
sudo docker build -t $docker:$tags  -f Dockerfile .
sudo docker push $docker:$tags
sudo docker rmi $docker:$tag

