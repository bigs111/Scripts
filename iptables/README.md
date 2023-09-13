# iptables

Here you can find scripts for setting up iptables for various applications. 

**How to make your iptables persistent**

On DEB based distro's you can use the package iptables-persistent.

To install iptables-persistent do "sudo apt install iptables-persistent -y", then run the commands below to make them persistent after reboot:

**sudo iptables-save > /etc/iptables/rules.v4**

**sudo ip6tables-save > /etc/iptables/rules.v6**

On RPM based distro's you can use the package iptables-services. 

To install iptables-services do "sudo dnf install iptables-services -y", and to make you configuration persistent run:

**sudo iptables-save > /etc/sysconfig/iptables**

**sudo ip6tables-save > /etc/sysconfig/ip6tables**
