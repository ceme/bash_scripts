#! /bin/sh

function check {
	if [ $? -ne 0 ] ; then
		echo "Error occurred getting URL $1;"
		if [ $? -eq 6 ]; then
			echo "Unable to reslove host"
		fi
		if [ $? -eq 7 ]; then
			echo "Unable to contact host"
		fi
		exit 1
	fi
}
curl -s -o "~/check_url_out.txt" $1
check;
echo 'got it'
