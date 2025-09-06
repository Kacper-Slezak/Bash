#!/bin/bash

src=/mnt/c/Users/kacpe/Documents/
dest=/mnt/c/Users/kacpe/backup
mkdir -p "$dest"

backup="$dest/backup-$(date +%Y-%m-%d).tar.gz"
tar -czf "$backup" "$src"

find "$dest" -type f -mtime +7 -delete
echo "Backup zapisany w: ${backup}"

