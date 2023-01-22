#!/bin/bash

while command
do
	#1. Menampilkan ukuran memory pada sistem dalam satuan megabytes.
	echo ""
	echo "Memory usage (Megabytes):"
	free -m
	echo ""
	sleep 3

	#2. Menampilkan penggunaan ruang disk pada filesystem dalam satuan gigabytes.
	echo ""
	echo "Disk space (Gigabytes):"
	df -h
	echo ""
	sleep 3
	
	#3. Menampilkan penggunaan ruang disk pada filesystem hanya untuk kolom Filesystem dan Use% (ditampilkan juga nama kolomnya) serta tanpa menyertakan tmpfs.
	echo ""
	echo "Disk space (Filesystems & Use% without tmpfs):"
	df --out=source --out=pcent -x tmpfs
	echo ""
	sleep 1m
done
