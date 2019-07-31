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
  
