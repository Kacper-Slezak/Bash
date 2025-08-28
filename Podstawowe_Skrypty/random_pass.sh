#!/bin/bash

haslo=$(< /dev/urandom tr -dc A-Za-z0-9 | head -c12)
echo "Twoje wygenerowane hasło to: ${haslo}"
