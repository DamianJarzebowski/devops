## nagłówki cache

### Pliki na wszystkich domenach mają czas wygasania 1h, ale subdomena 'abc’ ma czas wygasania równy 3h.

```
set $wygasa 1h;

if ($host = "abc.hehel.xyz"){
    set $wygasa 3h;
}

expires $wygasa;
```