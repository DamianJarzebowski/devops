**`helmfile apply`**

Synchronizuje stan klastra z definicją w pliku `helmfile.yaml`. Tworzy, aktualizuje lub usuwa release'y Helm zgodnie z konfiguracją.

#

**`helmfile sync`**

Alias dla `helmfile apply`. Wykonuje tę samą operację synchronizacji stanu.

#

**`helmfile plan`**

Wyświetla plan zmian, które zostaną wprowadzone przez komendę `helmfile apply`. Pozwala na podgląd operacji bez ich faktycznego wykonania.

#

**`helmfile diff`**

Pokazuje różnice między aktualnie wdrożonymi release'ami a definicjami w `helmfile.yaml`. Można użyć flag, aby porównać z konkretną rewizją lub wersją chartu.

#

**`helmfile get`**

Pobiera informacje o wdrożonych release'ach. Można określić konkretny release lub pobrać informacje o wszystkich.

#

**`helmfile template`**

Renderuje szablony Helm dla wszystkich (lub wybranych) release'ów zdefiniowanych w `helmfile.yaml`, ale nie wdraża ich do klastra. Przydatne do weryfikacji wygenerowanych manifestów.

#

**`helmfile status`**

Wyświetla status wdrożonych release'ów zarządzanych przez Helmfile.

#

**`helmfile destroy`**

Usuwa wszystkie (lub wybrane) release'y zdefiniowane w `helmfile.yaml` z klastra.

#

**`helmfile repos`**

Wyświetla listę skonfigurowanych repozytoriów Helm używanych przez Helmfile.

#

**`helmfile update-dependencies`**

Aktualizuje zależności chartów zdefiniowanych w `helmfile.yaml`.

#