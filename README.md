# VNF03 – WireGuard Edge VNF

This VNF container provides a WireGuard-based VPN gateway, suitable for secure ingress/egress tunneling in a mesh or privacy network. Built on Alpine, it's lightweight and portable.

## Features

- Runs `wg-quick` with a built-in config
- Exposes interface `wg0` with NAT support
- Optional Tor routing and DNS-over-Tor chaining
- Ideal as an edge node or overlay mesh tunnel

## Run it

```bash
docker build -t vnf03-wg .
docker run --rm --cap-add=NET_ADMIN --device /dev/net/tun vnf03-wg
```

## Notes

- Change `wg0.conf` keys before deployment
- Add peers to mesh dynamically or via mesh.yaml
