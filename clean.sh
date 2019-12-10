#!/bin/sh
###########################################################
get_mounts() {
    mount | awk '$5 ~ "vfat|^ext" {print $3}'
}
sleep 3
init 4
sleep 3
rm -f /etc/enigma2/epg.dat
for mp in `get_mounts`; do
    rm -f ${mp}/epg.dat
    rm -rf ${mp}/crossepg
done
init 6




