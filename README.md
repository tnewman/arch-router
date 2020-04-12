# arch-router
A set of Ansible Scripts to turn a barebones Arch Linux installation into a home router.

## What does it do?
- Sets the `eth0` interface to receive an IP address via DHCP
- Bridges all `eth*` interfaces (except `eth0`)
- Configures nftables
- Configures dnsmasq for DHCP and DNS (using 1.1.1.1)
- Configures Unifi Controller (optional role)

## Running on localhost
```bash
ansible-playbook --connection=local -i hosts site.yml
```
