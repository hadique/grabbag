#!/bin/sh
enabled=`iptables -L -n | grep [--]`

if  [ -z "$enabled" ] ; then
        echo "Empty firewall policy, possibly not blocking."
        exit
fi

result=`iptables -L -n | grep 17472`

if  [ -z "$result" ] ; then
        echo "No firewall rule for default Tanium Client port."
else
        echo $result
fi
