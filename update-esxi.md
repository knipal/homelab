esxcli system maintenanceMode set --enable true
esxcli network firewall ruleset set -e true -r httpClient
esxcli software sources profile list -d https://hostupdate.vmware.com/software/VUM/PRODUCTION/main/vmw-depot-index.xml | grep <version>
esxcli software profile update -d https://hostupdate.vmware.com/software/VUM/PRODUCTION/main/vmw-depot-index.xml -p <name>

esxcli network firewall ruleset set -e true -r httpClient
esxcli system maintenanceMode set --enable true