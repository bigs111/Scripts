#!/bin/bash

# apache2 iptables script

# ssh rule (you can set destination port with "-s <ip>")
# this is allowing all ip to connect to port 22
iptables -I INPUT -p tcp --dport 22 -j ACCEPT

# setting base input policy to deny all
iptables -P INPUT DROP

# allowing all traffic on port 80 and 443 (ports used for web traffic)
iptables -A INPUT -p tcp --dport 80 -j ACCEPT
iptables -A INPUT -p tcp --dport 443 -j ACCEPT

# allowing all traffic on loopback interface
# you might be able to comment this out if you arnt running a local database (mysql)
iptables -I INPUT -i lo -j ACCEPT

# dns rules
# if you are not using a dns i suggest keeping them commented
#  iptables -A INPUT -p tcp --dport 53 -j ACCEPT
#  iptables -A INPUT -p udp --dport 53 -j ACCEPT