# arch-router
A set of Ansible Scripts to turn a barebones Arch Linux installation into a home router.

## Prerequisites
- A complete Arch Linux installation

## What does it do?
- Sets the `eth0` interface to receive an IP address via DHCP
- Bridges all `eth*` interfaces (except `eth0`)
- Configures nftables
- Configures dnsmasq for DHCPv4, DHCPv6 (with prefix delegation) and DNS (using Cloudflare DNS)
- Configures sshd (not remotely accessible)
- Configures Unifi Controller (optional role)
- Configures trusted (VLAN 100) and untrusted (VLAN101) VLANs.

## Customizations
- Choose the desired roles (router and Unifi Controller) by editing `hosts`
- Customize nftables by adding configuration files to `/etc/nftables.d`
- Customize dnsmasq by adding configuration files to `/etc/dnsmasq.d`

## Running on localhost
1. Run the Ansible Playbook
   ```bash
   ansible-playbook -i hosts site.yml
   ```
2. Reboot
