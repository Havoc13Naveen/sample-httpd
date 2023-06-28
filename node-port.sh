 node_port=`kubectl get service | grep "nodeport-webserver" | awk -F " " '{print $5}' | awk -F ":" '{print $2}' | awk -F "/" '{print $1}'`
 echo "using this port : $node_port "
