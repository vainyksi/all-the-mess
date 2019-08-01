# Linux notes

- zip file while showing the progress of process
  ```
  zip -qr - [folder] | pv -bep -s $(du -bs [folder] | awk '{print $1}') > [file.zip]
  ```

- disable waiting for network set (source [here](https://askubuntu.com/a/979493)), 
  when "_a start job is running for wait for network to be configured_" at ubuntu startup
  ```
  systemctl disable systemd-networkd-wait-online.service
  systemctl mask systemd-networkd-wait-online.service
  ```
  
- add ssh key to server
  
  copy public key to ```~/.ssh/authorized_keys``` file (source [here](https://www.linode.com/docs/security/authentication/use-public-key-authentication-with-ssh/))

- renew DHCP IP address (source [here](https://www.cyberciti.biz/faq/howto-linux-renew-dhcp-client-ip-address/))
  
  - to release IP address
    ```
    sudo dhclient -v -r eth0
    ```
  - to gain new IP adress
    ```
    sudo dhclient -v eth0
    ```

- change netplan static IP (ubuntu 18.04 server)
  ```
  sudo sed -i 's/$NEW_IP/$OLD_IP' /etc/netplan/50-cloud-init.yaml
  sudo netplan apply
  ```
  
- Ubuntu 18.04 LTS preserve hostname (source [here](https://askubuntu.com/questions/1028633/host-name-reverts-to-old-name-after-reboot-in-18-04-lts))
  
  First edit /etc/cloud/cloud.cfg and set the parameter "preserve_hostname" from "false" to "true" and then edit /etc/hostname or call ```sudo hostnamectl set-hostname $NEW_HOSTNAME```.
  
  
