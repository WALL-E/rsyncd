# rsync 客户端使用说明


## 安装步骤

```
cd /etc/

git clone https://github.com/WALL-E/rsyncd.git

init.sh

start.sh
```

## 列出rsync 服务器上的所提供的同步内容

```
rsync  --list-only mysql@172.28.32.101::

rsync  --list-only --password-file=/tmp/password mysql@172.28.32.101::mysql

# 同步文件
rsync --password-file=/tmp/password /home/vagrant/vagrant_1.8.5_x86_64.rpm mysql@172.28.32.101::mysql
```


## 配置密码文件
目的是不需要命令行交互输入密码。文件内容是密码，文件权限必须是600

```
[vagrant@dockerHost-102 ~]$ ls -l /tmp/password
-rw-------. 1 vagrant vagrant 6 11月  1 08:32 /tmp/password

[vagrant@dockerHost-102 ~]$ cat /tmp/password
mysql
```
