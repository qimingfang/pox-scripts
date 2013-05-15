#!/bin/bash
for (( c=0; c<9; c++ ))
do
    url="qf26@sw$c.RedskyTest8.Spinglass.emulab.net";
	for i in 0 1 2 3 
	do
		ssh $url "sudo ovs-vsctl del-port sw eth${i}" &
		ssh $url "sudo ovs-ofctl del-flows sw " &
	done
done
