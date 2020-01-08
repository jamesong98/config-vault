virt-install \
--name win1 \
--ram 10240 \
--disk path=/opt/kvm/win1.img,format=qcow2,size=200 \
--vcpus 12 \
--os-type linux \
--network bridge=br0 \
--network bridge=br3 \
--cdrom '/opt/kvm/win2016.iso' \
--boot cdrom,hd \
--graphics vnc

