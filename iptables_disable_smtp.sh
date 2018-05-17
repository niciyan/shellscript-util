iptables -A OUTPUT -p tcp --dport 25 -j REJECT
iptables -A OUTPUT -p tcp --dport 80 -j REJECT
iptables -A OUTPUT -p tcp --dport 443 -j REJECT
iptables -A OUTPUT -p tcp --dport 587 -j REJECT
iptables -A OUTPUT -p tcp --dport 465 -j REJECT

# -A OUTPUT -p tcp --dport 25 -j REJECT
# -A OUTPUT -p tcp --dport 80 -j REJECT
# -A OUTPUT -p tcp --dport 443 -j REJECT
# -A OUTPUT -p tcp --dport 587 -j REJECT
# -A OUTPUT -p tcp --dport 465 -j REJECT
