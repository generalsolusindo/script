# Wazuh
sudo WAZUH_MANAGER='10.10.10.45' WAZUH_AGENT_GROUP='default' yum install https://packages.wazuh.com/4.x/yum/wazuh-agent-4.3.10-1.x86_64.rpm
sudo systemctl daemon-reload
sudo systemctl enable wazuh-agent
sudo systemctl start wazuh-agent

# SNMP
sudo yum install net-snmp net-snmp-utils -y
firewall-cmd --permanent --add-port=161/udp
firewall-cmd --reload
sudo systemctl enable snmpd
sudo systemctl start snmpd

