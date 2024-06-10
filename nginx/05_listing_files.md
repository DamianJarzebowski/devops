### aktywacja listowanie plików w podkatalogu (fragment /etc/nginx/sites-enabled/druga)

Należy dodać poniższą konfiguracje do ustawień strony druga

```
location /pliki {
		fancyindex on;
}
```

### to będzie efekt

![alt text](./images/05/listing-files.png)

### Stepy do wykonania

![alt text](./images/05/steps.png)
