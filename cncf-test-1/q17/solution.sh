kubectl run tigers-reunite --image=httpd:2.4.41-alpine --labels "pod=container,container=pod" --dry-run=client -oyaml > pod.yaml

crictl pods

crictl ps

crictl logs 4b8e3b59be74c