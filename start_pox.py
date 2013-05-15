#!/bin/bash
for (( c=0; c<4; c++ ))
do
    url="qf26@sw$c.RedskyTest8.Spinglass.emulab.net";
    ssh $url "/etc/init.d/openvswitch-controller stop";
    sleep 10
    ssh $url "cd pox; ./pox.py --verbose samples.pretty_log forwarding.l2_learning" &
done
