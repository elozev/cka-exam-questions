kubectl taint node cp-node-0 noschedule=true:NoSchedule

kubectl run pod-1 --image=nginx --labels="nginx"