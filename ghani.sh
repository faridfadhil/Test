#!/bin/sh

echo $
{
	echo 	"GET / HTTP/1.0"
	echo	"Host: www.itb.ac.id"
	echo	
	sleep 1
} | telnet www.itb.ac.id 80 > ghani.html
grep "<a href=" ghani.html | sed "s/<a href/\\n<a href/g" | sed 's/\"/\"><\/a>\n/2' | grep href | sort | uniq  > test.txt

