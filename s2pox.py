#!/bin/bash
for (( c=0; c<4; c++ ))
do
    url="qf26@sw$c.RedskyTest8.Spinglass.emulab.net";
    ssh $url "sudo ovs-vsctl set-controller sw tcp:127.0.0.1:6633";
done
