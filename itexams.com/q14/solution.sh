kubectl get pods -l name=overloaded-cpu

kubectl top pods -l name=overloaded-cpu --sort-by=cpu > /var/log/log-file.log