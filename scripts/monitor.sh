#!/bin/bash

# Script de monitoring système
echo "=== Rapport système ===" 
echo "Date: $(date)"
echo "Utilisateur: $(whoami)"
echo "Hostname: $(hostname)"
echo ""

echo "=== Utilisation du disque ==="
df -h | head -5

echo ""
echo "=== Mémoire ==="
free -h

echo ""
echo "=== Charge système ==="
uptime

echo ""
echo "=== Top 5 processus par CPU ==="
ps aux --sort=-%cpu | head -6
