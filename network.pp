
file {
  '/etc/sysconfig/network-scripts/ifcfg-eth1':
    content =>
    'DEVICE="eth1"
    BOOTPROTO="dhcp"
    ONBOOT="yes"',
}
