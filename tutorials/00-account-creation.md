# Account creation

While using any new device, please create your own account first.
```
$ sudo adduser <user_name>
```

Add your account to sudo and docker group.
```
$ sudo adduser <user_name> sudo
$ sudo adduser <user_name> docker
```

You can change your account password by the following command:
```
$ sudo passwd <user_name>
```