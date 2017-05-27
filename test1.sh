#!/bin/bash
#turn on globing
shopt -s extglob

path="/root/test"
save="/root/save"

ls /root/test/ |egrep "30|31" > $save
find /root/test/*txt -type f -exec rm -rf !(*30*|*31*) \;

#turn off globing
shopt -u extglob
