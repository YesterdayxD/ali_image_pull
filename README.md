# ali_image_pull



## kubespary install ubuntu

### set node

```
setenforce 0
sed -i --follow-symlinks 's/SELINUX=enforcing/SELINUX=disabled/g' /etc/sysconfig/selinux
```

```
ufw disable
modprobe br_netfilter
echo '1' > /proc/sys/net/bridge/bridge-nf-call-iptables
sysctl -w net.ipv4.ip_forward=1
swapoff -a
```

```
hostname k1
```

```
vi /etc/hosts
```

```

```
### configure pip apt source

```
sudo sed -i "s@http://.*archive.ubuntu.com@https://mirrors.tuna.tsinghua.edu.cn@g" /etc/apt/sources.list
sudo sed -i "s@http://.*security.ubuntu.com@https://mirrors.tuna.tsinghua.edu.cn@g" /etc/apt/sources.list
```

```
cp /etc/apt/sources.list /etc/apt/sources.list.backup

vi /etc/apt/sources.list

deb http://mirrors.aliyun.com/ubuntu/ bionic main restricted universe multiverse
deb-src http://mirrors.aliyun.com/ubuntu/ bionic main restricted universe multiverse
deb http://mirrors.aliyun.com/ubuntu/ bionic-security main restricted universe multiverse
deb-src http://mirrors.aliyun.com/ubuntu/ bionic-security main restricted universe multiverse
deb http://mirrors.aliyun.com/ubuntu/ bionic-updates main restricted universe multiverse
deb-src http://mirrors.aliyun.com/ubuntu/ bionic-updates main restricted universe multiverse
deb http://mirrors.aliyun.com/ubuntu/ bionic-backports main restricted universe multiverse
deb-src http://mirrors.aliyun.com/ubuntu/ bionic-backports main restricted universe multiverse
deb http://mirrors.aliyun.com/ubuntu/ bionic-proposed main restricted universe multiverse
deb-src http://mirrors.aliyun.com/ubuntu/ bionic-proposed main restricted universe multiverse


apt-get update

```


```
mkdir ~/.pip
cat > ~/.pip/pip.conf << EOF 
[global]
trusted-host=mirrors.aliyun.com
index-url=https://mirrors.aliyun.com/pypi/simple/
EOF


mkdir ~/.pip
cat > ~/.pip/pip.conf << EOF 
[global]
trusted-host=pypi.tuna.tsinghua.edu.cn
index-url=https://pypi.tuna.tsinghua.edu.cn/simple
EOF


```

### ssh
```
ssh-keygen
ssh-copy-id -i  /root/.ssh/id_rsa.pub root@192.168.203.132
```

### install docker


```
sudo apt install apt-transport-https ca-certificates curl software-properties-common
sudo add-apt-repository "deb [arch=amd64] http://mirrors.aliyun.com/docker-ce/linux/ubuntu $(lsb_release -cs) stable"
curl -fsSL http://mirrors.aliyun.com/docker-ce/linux/ubuntu/gpg | sudo apt-key add -
sudo apt-cache policy docker-ce
sudo apt-get install -y docker-ce
```

```
apt-get install docker.io
```

### install ansible
```
apt install -y python3-pip
pip3 install --upgrade pip==21
```
### kubespary
```

[//]: # (# pip3 install -r requirements.txt)


pip3 install -r requirements-2.11.txt
```


### 安装过程中出现的问题

```

[//]: # (apt-get install -y apt-transport-https conntrack socat unzip ebtables ipvsadm ipset)

apt-cache policy libxtables12
apt-get reinstall libxtables12=1.6.1-2ubuntu2
apt-get reinstall libxtables12=1.6.1-2ubuntu2
apt-get install iptables
apt-get install ipset


```

```
 vi roles/kubespray-defaults/defaults/main.yaml
 vi inventory/sample/group_vars/all/docker.yml
```
