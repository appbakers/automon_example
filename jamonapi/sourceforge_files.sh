#!/bin/sh
mkdir /Users/stevesouza/Documents/sourceforge/jamonrelease/jamonall-2.81/
cp ./jamon/target/*.jar /Users/stevesouza/Documents/sourceforge/jamonrelease/jamonall-2.81/.
cp ./jamon_osmon/target/*.jar  /Users/stevesouza/Documents/sourceforge/jamonrelease/jamonall-2.81/.
cp ./jamon_war/target/*.war  /Users/stevesouza/Documents/sourceforge/jamonrelease/jamonall-2.81/.
# note only the destination file name has to change.
cp /Users/stevesouza/Documents/sourceforge/jamonrelease/jamonall-2.76/jamontomcat-2.76.jar /Users/stevesouza/Documents/sourceforge/jamonrelease/jamonall-2.81/jamontomcat-2.81.jar
