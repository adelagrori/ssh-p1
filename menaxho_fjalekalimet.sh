#!/bin/bash

# Variablat 
TARGET_USER="perdorues_test"
MAX_DAYS=90
WARN_DAYS=7

echo "--- Duke aplikuar politikat e sigurise per: $TARGET_USER ---"

#1. Vendos vlefshmerine maksimale te fjalekalimit (90 dite)
sudo chage -M $MAX_DAYS $TARGET_USER

#2. Vendos njoftimin per skadence (7 dite perpara)
sudo chage -W $WARN_DAYS $TARGET_USER

#3. Detyron perdoruesin te ndryshoje fjalekalimin ne login-in e radhes
sudo chage -d 0 $TARGET_USER

echo "Statusi i ri i llogarise:"
sudo chage -l $TARGET_USER

