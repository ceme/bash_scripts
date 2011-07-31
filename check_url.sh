#! /bin/sh

function check {
	if [ $? -ne 0 ] ; then
		echo "Error occurred getting URL $1;"
		if [ $? -eq 6 ]; then
			echo "Unable to resolve host"
		fi
		if [ $? -eq 7 ]; then
			echo "Unable to contact host"
		fi
		exit 1
	fi
}
curl -s -o "/dev/null" $1
check;
