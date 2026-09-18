#!/usr/bin/env bash

# Khai báo mảng chứa tên 2 dịch vụ: Nginx và SSH.
services=("nginx" "ssh")

# vòng lặp kiểm tra trạng thái (`systemctl is-active`)
for service in "${services[@]}"; do
    if systemctl is-active --quiet "$service"; then
        printf '[OK] Dịch vụ %s đang hoạt động.\n' "$service"
    else
        # \033[31m: chữ đỏ;
        printf '\033[31m[CẢNH BÁO] Dịch vụ %s không active hoặc không kiểm tra được!\033[0m\n' "$service"
    fi
done
