# #!/bin/bash

# # Set the source and destination directories
# SRC_DIR="./backup-target"
# DST_DIR="./backup"

# # Set the current date and time
# DATE=$(date +%Y%m%d%H%M%S)

# # Create a new directory for today's backup
# mkdir -p "$DST_DIR/$DATE"

# # Create a hard link copy of the previous backup
# if [ -d "$DST_DIR/$(date -d 'yesterday' +%Y%m%d%H%M%S)" ]; then
#   cp -al "$DST_DIR/$(date -d 'yesterday' +%Y%m%d%H%M%S)" "$DST_DIR/$DATE"
# fi

# # Run rsync to update the backup
# rsync -av --delete --link-dest="$DST_DIR/$(date -d 'yesterday' +%Y%m%d%H%M%S)" "$SRC_DIR/" "$DST_DIR/$DATE"




#!/bin/bash

# # Ustaw katalog źródłowy i docelowy kopii zapasowej
# SRC_DIR="./backup-target"
# DST_DIR="./backup"

# # Ustaw aktualną datę i godzinę
# DATE=$(date +%Y%m%d%H%M%S)

# # Utwórz nowy katalog dla dzisiejszej kopii zapasowej
# mkdir -p "$DST_DIR/$DATE"

# # Utwórz kopię zapasową inkrementalną z wykorzystaniem twardych dowiązań
# if [ -d "$DST_DIR/$(date -d 'yesterday' +%Y%m%d%H%M%S)" ]; then
#   rsync -al --delete --link-dest="$DST_DIR/$(date -d 'yesterday' +%Y%m%d%H%M%S)" "$SRC_DIR/" "$DST_DIR/$DATE"
# else
#   rsync -a --delete "$SRC_DIR/" "$DST_DIR/$DATE"
# fi



#!/bin/bash

# Ustaw katalog źródłowy i docelowy kopii zapasowej
SRC_DIR="./backup-target"
DST_DIR="./backup"

# Ustaw aktualną datę i godzinę
DATE=$(date +%Y%m%d%H%M%S)

# Utwórz nowy katalog dla dzisiejszej kopii zapasowej
mkdir -p "$DST_DIR/$DATE"

# Utwórz kopię zapasową z wykorzystaniem twardych dowiązań
for file in "$SRC_DIR"/*; do
  if [ -f "$file" ]; then
    link "$file" "$DST_DIR/$DATE/$(basename "$file")"
  elif [ -d "$file" ]; then
    mkdir -p "$DST_DIR/$DATE/$(basename "$file")"
    (cd "$file" && tar cf - .) | (cd "$DST_DIR/$DATE/$(basename "$file")" && tar xf -)
  fi
done

# Interesting approuch
# https://github.com/albertoalcolea/dotfiles/blob/master/bin/bin/backup