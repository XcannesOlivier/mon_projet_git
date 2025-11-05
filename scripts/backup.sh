#!/bin/bash

# Script de sauvegarde automatique
DATE=$(date +%Y%m%d_%H%M%S)
BACKUP_DIR="/home/olivier/Bureau/ProjetC/data/backup"
SOURCE_DIR="/home/olivier/Bureau/ProjetC/data"

echo "Début de la sauvegarde à $(date)"

# Créer une archive tar.gz
tar -czf "$BACKUP_DIR/backup_$DATE.tar.gz" -C "$SOURCE_DIR" logs config

if [ $? -eq 0 ]; then
    echo "Sauvegarde réussie : backup_$DATE.tar.gz"
else
    echo "Erreur lors de la sauvegarde"
    exit 1
fi

# Nettoyer les anciennes sauvegardes (garder seulement les 5 dernières)
cd "$BACKUP_DIR"
ls -t backup_*.tar.gz | tail -n +6 | xargs -r rm

echo "Fin de la sauvegarde à $(date)"
