#!/bin/bash

echo "[VNF03-WG] Starting WireGuard..."

# Enable IP forwarding
echo 1 > /proc/sys/net/ipv4/ip_forward

# Apply iptables rules (optional)
iptables -t nat -A POSTROUTING -o wg0 -j MASQUERADE

# Bring up the WireGuard interface
wg-quick up /etc/wireguard/wg0.conf

# Keep container alive
tail -f /dev/null
