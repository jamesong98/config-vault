virt-install \
--name db1 \
--ram 20480 \
--disk path=/opt/kvm/db1.img,format=qcow2,size=50 \
--vcpus 2 \
--os-type linux \
--network bridge=br0 \
--cdrom '/opt/iso/ubuntu-16.04.3-server-amd64.iso' \
--boot cdrom,hd \
--graphics vnc

