#!/bin/bash
service sputnik stop
service sputnik start
sleep 2
tail -f /var/log/sputnik.log
