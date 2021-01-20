#!/bin/bash


set -e 
freemem = `awk '/MemFree/ {print int($2/1024)}' /proc/meminfo`

s=$(($freemem/10*8))
m=$(($freemem/10*8))
n=$(($freemem/10*2))

#Setting jmeter command parameters

export JVM_ARGS="Xmn${n}m -Xms${s}m -Xmx${x}m"

echo "START running Jmeter on `date`"
echo "JVM_ARGS=${JVM_ARGS}"
echo "jmeter args=$@"



#passing standard jmeter args

jmeter $@

echo "END running jmeter on `date`"
