# arch-router
A set of Ansible Scripts to turn a barebones Arch Linux installation into a home router.

## Prerequisites
- A complete Arch Linux installation

## What does it do?
- Configures management (VLAN 1), home (VLAN 100), and untrusted (VLAN200) VLANs.
- Sets the `eth0` interface to receive an IP address via DHCP.
- Sets the `eth1` interface as a trunk port.
- Sets all remaining interfaces as access ports on VLAN 100.
- Bridges all `eth*` interfaces (except `eth0`)
- Configures nftables
- Configures dnsmasq for DHCPv4, DHCPv6 (with prefix delegation) and DNS (using Cloudflare DNS)
- Configures sshd (not remotely accessible)
- Configures Unifi Controller (optional role)
- Configures a file share (optional role)

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
