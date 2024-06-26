

[2. System and Hardware Information Tools](#find)

## 2. System and Hardware Information Tools

### Larger tools: 

* **inxi**

A text application that shows information about your hardware and operating system.     
It can show a lot of information.

```
inxi -Fxxxrzc0
```

Very nice tutorial on how to paste the result on the forum  
<https://forums.linuxmint.com/viewtopic.php?p=1809117#p1809117>


*  **hardinfo**

A graphic application that shows information about your hardware and operating system. 

```
hardinfo
```

* **neofetch**

Shows a few basic informations.

```
neofetch --stdout 
```

*  **dmidecode**

<blockquote>
       dmidecode is a tool for dumping a computer's DMI (some say SMBIOS) table contents in a human-readable format. This table contains a
       description of the system's hardware components, as well as other useful pieces of information such as serial numbers and BIOS  revision. 
</blockquote>

Examples how use:  


```
dmidecode -t processor
```

```
dmidecode -t memory
```

```
dmidecode -t bios
```

More in 
```
man dmidecode
```


----

### Examples of smaller other tools:

&nbsp;

*  **Information about CPU**

```
lscpu
```

&nbsp;

* **Information about USB devices**

```
lsusb
```

&nbsp;

* **Information about PCI devices**

PCI, or Peripheral Component Interconnect is an interface to add additional hardware components to a computer system.

```
lspci
```

This command will show kernel drivers handling each device
```
lspci -nnk
```

&nbsp;

* **Information about hard disk partitions**

```
lsblk
```

Command with specified output:

```
lsblk -o NAME,FSTYPE,FSUSE%,MOUNTPOINT,LABEL,PATH,UUID
```

```
blkid
```

```
fdisk -l
```

&nbsp;

**Graphic applications for hard drive**

```
gparted
```

```
gnome-disks
```

&nbsp;

* **Information about amount of space occupied**

 **df** command displays the amount of disk space available on the file system

```
df
```

**du** - will estimate the used space for files 

It will display the top 10 directories in your path:

```
du -h "/your/path/" | sort -hr | head -10
```

It will display the top 10 directories and files in your path:

```
du -ah "/your/path/" | sort -hr | head -10
```

**find** - search for files and folders

## find

It will display the top 10 files in your path:
```
find "/your/path/" -type f -exec du -ah {} + | sort -hr | head -10
```

It will display modified files last week in your path:
```
find "/your/path/" -type f -mtime -7 -exec ls -l {} \;
```

&nbsp;

* **Information about mounted files or devices**

```
mount
```


This show only mounted devices.

```
mount  | grep ^/dev

```

&nbsp;

* **Information about SATA / IDE.**

For example
```
sudo hdparm -i /dev/sda
```

&nbsp;

* **Information about the total amount of free and used physical and swap memory in the system, as well as the buffers and caches used by the kernel.**

```
free -hw
```

&nbsp;

* **Information about sensors**
```
sensors
```

&nbsp;

* **Information about kernel version**

```
uname -r
```

Or more info
```
uname -a
```

&nbsp;

* **Information about network**

**Warning:**
Most commands must be run with administrator rights ( with **sudo** or **su** )


Command shows addresses assigned to all network interfaces.
```
ip addr
```

Command displays the status of the currently active interfaces.
```
ifconfig
```

Command displays active **Internet connections** and active **UNIX domain sockets**
```
netstat
```

For example you can display the **processes that are "listening"**
The command must be run with administrator rights ( with **sudo** or **su** )
```
netstat -tulgpn | grep "LISTEN"
```
```
lsof -nP -i tcp -i udp | grep "LISTEN"
```
```
ss -autpn -o state listening
```

For example you can display the **list only TCP or UDP connections**
```
netstat -atuo
```

```
sudo lsof -i :0-65535
```

&nbsp;

* **Information about the name of the system**

```
cat /etc/*release
```
Or
```
lsb_release -a
```

&nbsp;

* **Information about Linux processes**

```
ps -aux
```

Process tree:
```
pstree -p
```

**Other examples:**

It will display the 5 processes with the highest memory consumption.
```
ps -eo %cpu,%mem,pid,cmd,user | sort -k 2 -r | head -5
```

It will display the 5 processes with the highest cpu consumption.
```
ps -eo %cpu,%mem,pid,cmd,user | sort -k 1 -r | head -5
```

&nbsp;

* **Information about open files**

```
lsof
```

&nbsp;

* **Users that recently logged into the system**

```
last
```