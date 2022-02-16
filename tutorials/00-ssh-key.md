# SSH key

## SSH without password

### 1. Generate a public/private keypair on your Ubuntu desktop

```
$ mkdir ~/.ssh
$ chmod 700 ~/.ssh
$ ssh-keygen
```

### 2. Upload your public key to remote Linux server

```
$ ssh-copy-id remote-user@server-ip
```

### 3. Now you can ssh remote user without password

```
$ ssh remote-user@server-ip
```

------

## SSH key for Github

You can follow the steps below to set up ssh keys for Github.

### 1. Generate key 
```
$ mkdir ~/.ssh
$ chmod 700 ~/.ssh
$ ssh-keygen -t ed25519 -C "your_email@example.com"
```

### 2. Upload key to Github
Show the key and copy it for later use.
```
$ cat ~/.ssh/id_ed25519.pub
ssh-ed25519 ........ your_email@example.com
```
Log in your Github account and select settings.\
![](https://i.imgur.com/NddBUYg.png)

See left column and select SSH and GPG keys → New SSH key\
![](https://i.imgur.com/heWiCrV.png)

Finally, copy your key in the bloew and set your name of key.\
![](https://i.imgur.com/3VUGFkC.png)

### 3. Make sure ssh key work
```
$ ssh -T git@github.com
```
If you see the following message, the ssh key is functioning properly.
```
Hi XXX! You’ve successfully authenticated, but GitHub does not provide shell access.
```

### 4. Transfer http to ssh (optional)

This step will modify current repo from http to ssh, if you have already use ssh key, then you can skip this step. 
```
$ cd [to your repo]

$ git remote -v
origin  https://github.com/user_name/project.git (fetch)
origin  https://github.com/user_name/project.git (push)

$ git remote set-url origin git@github.com:user_name/project.git

$ git remote -v
origin  git@github.com:user_name/project.git (fetch)
origin  git@github.com:user_name/project.git (push)
```