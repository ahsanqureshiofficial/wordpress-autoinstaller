#!/bin/bash
### Install OpenLiteSpeed and WordPress
bash <( curl -sk https://raw.githubusercontent.com/litespeedtech/ls-cloud-image/master/Setup/wpimgsetup.sh )
### Regenerate password for Web Admin, Database, setup Welcome Message
bash <( curl -sk https://raw.githubusercontent.com/litespeedtech/ls-cloud-image/master/Cloud-init/per-instance.sh )
## Add firewall rules for ls panel
ufw allow 7080/tcp
### Reboot server
reboot
