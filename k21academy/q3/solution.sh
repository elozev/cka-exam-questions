k exec etcd-sandbox-cp-0 -- sh -c "ETCDCTL_API=3 etcdctl --endpoints=127.0.0.1:2379 snapshot save /tmp/etcd-backup-now.db \
--cacert=/etc/kubernetes/pki/etcd/ca.crt \
--cert=/etc/kubernetes/pki/etcd/server.crt \
--key=/etc/kubernetes/pki/etcd/server.key"