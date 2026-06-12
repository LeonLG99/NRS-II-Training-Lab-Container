#!/bin/bash

echo "Respaldando configuraciones..."

mkdir -p configs

for r in /root/LABS/clab-NRS-II-IXR-LAB/SR*/tftpboot/config.txt
do
    router=$(basename $(dirname $(dirname "$r")))
    cp "$r" "configs/${router}.cfg"
    echo "Guardado: ${router}.cfg"
done

echo ""
echo "Cambios detectados por Git:"
git status
