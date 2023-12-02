kubectl cordon ek8s-node-0

kubectl drain ek8s-node-0 --ignore-daemonsets --delete-local-data