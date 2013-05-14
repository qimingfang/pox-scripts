#!/bin/bash
for (( c=0; c<9; c++ ))
do
    url="qf26@node$c.RedskyTest9.Spinglass.emulab.net";
    ssh $url sudo apt-get install openvswitch-datapath-source bridge-utils -y
    ssh $url suto apt-get install module-assistant auto-install openvswitch-datapath -y
    ssh $url sudo module-assistant auto-install openvswitch-datapath
    ssh $url sudo apt-get install openvswitch-brcompat openvswitch-common openvswitch-controller -y
    ssh $url sudo apt-get install tshark -y

done
