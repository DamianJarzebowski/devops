## How to find host to login argo

```
kubectl get ingress -n argocdrgocd
NAME                    CLASS                                HOSTS                                     ADDRESS        PORTS   AGE
argocd-ingressgateway   webapprouting.kubernetes.azure.com   mlops-k8s.westeurope.cloudapp.azure.com   20.8.227.134   80      2d8h
```

## Login

```
# After this command you should provide username and password
argocd login
```

