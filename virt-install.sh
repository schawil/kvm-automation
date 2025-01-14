#!/bin/bash
virt-install \
--name Fedora40 \
--ram 2048 \
--vcpus 2 \
--disk path=/var/lib/libvirt/images/Fedora40.1.qcow2,size=20 \
--cdrom /var/lib/libvirt/images/Fedora-Workstation-Live-x86_64-40-1.14.iso
--network bridge=virbr0 \
--location http://localhost:8000/ \
--extra-args "ks=http://localhost:8000/kickstart.cfg"
