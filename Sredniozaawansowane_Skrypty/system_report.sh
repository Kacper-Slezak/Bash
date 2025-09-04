#!/bin/bash

echo "======Raport Systemowy======="
echo "Data: $(date)"
echo "Uptime: $(uptime -p)"
echo "CPU: $(lscpu | grep 'Model name')"
echo "RAM: $(free -h)"
echo "Dyski: $(df -h /)"
echo "Top 5 proces CPU: $(ps aux --sort=-%cpu | head -n 6)"

