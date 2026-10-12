#!/bin/bash

while true
do

echo "=======LINUX FILE MANAGER ========"

echo "1.Create file"
echo "2.Delete file"
echo "3.Check Files"
echo "4.List files"
echo "5.Exit"
echo "6. Help"

read -p "Enter your choice" choice

case $choice in

	1)
           read -p "Enter your filename:" filename
	 
	if [ -e "$filename" ]; then 
	
 		echo "File Already exist!"
	else
	touch "$filename"
	
	
		if [ -f "$filename" ]; then
		echo "File created Successfully"
		else
		echo "Failed To create file"
	 	fi
	fi
	;;
	2)
	read -p "Enter your fileaname:" filename

	if [ -f "$filename" ];then
	read -p "Are you sure you want to delete it? (y/n): " confirm

		if [ "$confirm" = "y" ]; then

		     rm "$filename"
			echo "File deleted successfully !!!!!!!!"
		else 
			echo "Deleted Cancelled."
		fi
	else 
		echo "File does not exist."
	fi
	;;
	3)
	read -p "Enter you filename:" filename
		
	if [ -f "$filename" ]; then 
		echo "$filename is exist"
	else
		echo "$filename is not exist"
	fi
	;;
 	4)
	   echo "Listing your files......"
		ls -l
	;;
	5)
	echo "Exit............"
	exit 0
	;;

	6)
	echo "What type of help you want please inform me in this details"
	;;
	*)
	echo "Invalid Choice "
	;;
esac
read -p "Press enter to continue....." dummy
done
