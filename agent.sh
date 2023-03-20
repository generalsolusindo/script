# Wazuh
curl -so wazuh-agent-4.3.10.deb https://packages.wazuh.com/4.x/apt/pool/main/w/wazuh-agent/wazuh-agent_4.3.10-1_amd64.deb
sudo WAZUH_MANAGER='10.10.10.45' WAZUH_AGENT_GROUP='default' dpkg -i ./wazuh-agent-4.3.10.deb
sudo systemctl daemon-reload
sudo systemctl enable wazuh-agent
sudo systemctl start wazuh-agent

# SNMP
sudo apt install snmpd snmp libsnmp-dev -y
sudo cp /etc/snmp/snmpd.conf{,.bak}
sudo sed -i '/agentaddress  127.0.0.1,\[::1\]/a\agentaddress udp:161' /etc/snmp/snmpd.conf
sudo systemctl restart snmpd
