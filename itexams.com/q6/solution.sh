kubectl create deploy front-end --image=nginx

kubectl patch deploy front-end --patch='{ "spec": { "template": { "spec": { "containers": [{ "" }] } } } }'

kubectl edit deploy front-end

## add containerPort: 80
```
   containers:
    - image: nginx
      name: nginx
      ports:
      - containerPort: 80
        name: http
```

kubectl expose deploy front-end --port=80 --target-port=80 --type=NodePort