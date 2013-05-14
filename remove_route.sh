#!/bin/bash
for (( c=0; c<9; c++ ))
do
    url="qf26@node$c.RedskyTest9.Spinglass.emulab.net";
    ssh $url "for i in \$(ip route | grep eth[1-9] | cut -d' ' -f1); do sudo ip route del \$i; done";
done
