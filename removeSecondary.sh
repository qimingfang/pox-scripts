#!/bin/bash
for (( c=0; c<4; c++ ))
do
    url="qf26@sw$c.RedskyTest8.Spinglass.emulab.net";
    ssh $url "for i in \$(ip route | grep eth[1-9] | cut -d' ' -f1); do sudo ip route del \$i; done";
    ssh $url "ip route"
done
