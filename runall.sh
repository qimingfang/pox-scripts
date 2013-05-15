#!/bin/bash
for (( c=0; c<4; c++ ))
do
    url="qf26@sw$c.RedskyTest8.Spinglass.emulab.net";
	ssh $url sudo ovs-vsctl add-br sw
	ssh $url "for i in \$(ifconfig -s | grep eth[1-9] | cut -f1 -d' '); do echo $c; echo \$i; sudo ovs-vsctl add-port sw \$i; done"
done
