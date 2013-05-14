#!/bin/bash
for (( c=0; c<9; c++ ))
do
    ./ssh-copy-id.sh -i ~/.ssh/id_rsa.pub "qf26@node$c.RedskyTest9.Spinglass.emulab.net";
done
