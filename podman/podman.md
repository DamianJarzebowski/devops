### Create pod
```
podman pod create --name <name> -p 8080:80
```

### Create sth inside pod
```
podman run -dt --pod <pod_name> --name <name> <image>

example
podman run -dt --pod prometheus --name prometheus-main -d prom/prometheus
```

### Run/Stop podman compose file
```
podman-compose up -d
podman-compose down
```

### Run pod file
```
podman play kube prometheus-pod.yaml
```