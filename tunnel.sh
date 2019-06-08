#!/bin/bash
# Configure the template for each vti interface in this file so it can be loaded at boot. 
#
# For tunnel_interface_x :
#------------------------------------------------------------------
#ip link add <tunnel_interface_x> type vti local <LOCAL_Interface_IP> remote <AWS_VPN_Endpoint_IP_1> key <mark_value_of_conn_1>
#ip addr add <Customer_Inside_IP_of_Endpoint_1>/30 remote <AWS_Inside_IP_of_Endpoint_1>/30 dev <tunnel_interface_x>
#ip link set <tunnel_interface_x> up mtu 1419
##iptables -t mangle -A FORWARD -o <tunnel_interface_x> -p tcp --tcp-flags SYN,RST SYN -j TCPMSS --clamp-mss-to-pmtu
#iptables -t mangle -A INPUT -p esp -d <Local_Interface_IP> -s <AWS_VPN_Endpoint_IP_1> -j MARK --set-xmark <mark_value_of_conn_1>
#------------------------------------------------------------------
