# Setting Aliases for ssh connect

To use easy rememberable and preset aliases for ssh conect - human readable text, connection presets as key cipher type, or ather presets

## Example

```
~/.ssh/config
```
```
Host aaa.com
    KexAlgorithms +diffie-hellman-group1-sha1

Host kubernetes-master
        HostName 192.168.1.101
        IdentitiesOnly=yes

Host kubernetes-node-1
        HostName 192.168.1.102
        IdentitiesOnly=yes

Host kubernetes-node-2
        HostName 192.168.1.103
        IdentitiesOnly=yes
```

To connect to ```192.168.1.101``` with parameter ```IdentitiesOnly``` it is needed to only call 

```
ssh username@kubernetes-master
```
instead of
```
ssh -o IdentitiesOnly=yes username@192.168.99.104
```
