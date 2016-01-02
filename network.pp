
file {
  '/etc/sysconfig/grub':
    content => 'GRUB_TIMEOUT=5
GRUB_DEFAULT=saved
GRUB_DISABLE_SUBMENU=true
GRUB_TERMINAL_OUTPUT="console"
GRUB_CMDLINE_LINUX="crashkernel=auto rd.lvm.lv=vg00/rootvol rd.lvm.lv=vg00/swapvol rhgb quiet net.ifnames=0 biosdevname=0"
GRUB_DISABLE_RECOVERY="true"'
}

exec {
  '/sbin/grub2-mkconfig -o /boot/grub2/grub.cfg':
    subscribe   => File['/etc/sysconfig/grub'],
    refreshonly => true,
}

file {
  '/etc/sysconfig/network-scripts/ifcfg-eth0':
    content => 'NAME="eth0"
DEVICE="eth0"
ONBOOT=yes
NETBOOT=yes
IPV6INIT=yes
BOOTPROTO=dhcp
TYPE=Ethernet',
}

file {
  '/etc/sysconfig/network-scripts/ifcfg-eth1':
    content => 'NAME="eth1"
DEVICE="eth1"
ONBOOT=yes
NETBOOT=yes
IPV6INIT=yes
BOOTPROTO=dhcp
TYPE=Ethernet',
}

file {
  '/etc/sysconfig/network-scripts/ifcfg-ens33':
    ensure => absent,
}
