#!/bin/bash
for (( c=0; c<9; c++ ))
do
    url="qf26@node$c.RedskyTest9.Spinglass.emulab.net";
    echo $c
    ssh $url "sudo ovs-vsctl set-controller sw tcp:127.0.0.1:8000"
    echo "controller ok"
    ssh $url "ovs-controller tcp:127.0.0.1:8000"
done


