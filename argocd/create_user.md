# Create a New Account in Argo CD
<br>

### Get config map with that command
```
kubectl get configmap argocd-cm -n argocd -o yaml > argocd-cm.yaml
```

### To add a new account, open the configmap file argocd-cm.yaml and add the following line under data

```
data:
  accounts.crunchops: login
```

### Now run the following command to apply the changes made in Argo CDs configmap
```
kubectl apply -n argocd  -f argocd-cm.yaml
```

### Once it is executed, you can verify if your account has been added to Argo CD using the account list command
```
argocd account list
```

<br>
<br>
<br>

# Configure RBAC for the Account
<br>

### We are going to use the argocd-rbac-cm configmap file of Argo CD to configure RBAC, to get the RBAC configmap file run the following command
```
kubectl get configmap argocd-rbac-cm -n argocd -o yaml > argocd-rbac-cm.yml
```

### Now open the configmap file, for the newly created account I am only going to give read-only access, to do that add the following line in the argocd-rbac-cm file under data
```
data:
  policy.csv: |
    p, role:readonly, applications, get, *, allow
    g, crunchops, role:readonly

# If you want to give other permission to the account
# you can replace readonly with readwrite, readexecute, or
# specify admin to give admin permissions.
```

### Run the following command to update RBAC
```
kubectl apply -n argocd -f argocd-rbac-cm.yml
```

### The final step is to create a new password for the account, to create a new password run the following command

```
argocd account update-password --account <new-account-name> --current-password <admin-password> --new-password <new-account-password>
```