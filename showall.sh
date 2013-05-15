#!/bin/bash
for (( c=0; c<4; c++ ))
do
    url="qf26@sw$c.RedskyTest8.Spinglass.emulab.net";
	echo $url
	ssh $url "sudo ovs-vsctl show"
	ssh $url "sudo ovs-ofctl dump-flows sw"
done
