#!/bin/bash 

#just runs bedgraph conversion

bismark2bedGraph $1 -o $2 --dir $3
