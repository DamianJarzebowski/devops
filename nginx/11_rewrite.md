### W pliku konfiguracyjnym dodaj:

```
rewrite ^/mrugalski$ https://mrugalski.pl last;
```

wpisując to bede przekierowany <br>
https://sub.djax.net.pl/mrugalski

### Obsługa parametrów w przekierowaniach:

```
rewrite ^/mrugalski$ https://mrugalski.pl last;

<!-- $1 oznacza, że to co będzie w miejscu (.+)$ zostanie podstawione w $1 -->
rewrite ^/mrugalski/(.+)$ https://mrugalski.pl/$1 last;

example:
https://sub.djax.net.pl/mrugalski/newsletter
https://mrugalski.pl/$1 w miejscue $1 wejdzie newsletter
```