kubectl run check-ip --image=httpd:2.4.41-alpine --dry-run=client -oyaml > pod.yaml

kubectl expose pod check-ip --target-port=80 --port=80 --type=ClusterIp --name=check-ip-service --dry-run=client -oyaml > svc.yaml