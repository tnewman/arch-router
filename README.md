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
- Choose the desired roles (router, file shares, Unifi Controller, etc.) by editing `hosts.yml`
- Customize nftables by adding configuration files to `/etc/nftables.d`
- Customize dnsmasq by adding configuration files to `/etc/dnsmasq.d`
- Customize file shares by adding file share to the shares array in `hosts.yml`:
  ```yaml
  vars:
    # Mounts a drive
    mounts:
      # 1 entry per drive
      - src: /dev/sdb1 # Mounts the drive /dev/sdb1. LABEL and UUID can also be used here.
        fstype: ntfs # This is an NTFS drive
        path: /share/test # Mounts the drive to /share/test.
    # Shares a directory
  ```

## Running on localhost
1. Copy `hosts.yml.sample` to `hosts.yml` and edit to suite your needs
1. Run the Ansible Playbook
   ```bash
   ./bootstrap.sh
   ```
2. Reboot
