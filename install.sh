#!/bin/bash
set -e

VERSION="0.12.3"

initOSType() {
	if [[ "$OSTYPE" == *"darwin"* ]]; then
		OS_TYPE="mac"
	elif [[ "$OSTYPE" == *"linux"* ]]; then
		OS_TYPE="linux"
	else 
		echo "Sorry, i dont know your system"
		exit 1
	fi
}

initOSType
sudo wget "https://github.com/franciscocpg/wkhtmltopdf-binaries/raw/master/$VERSION/$OS_TYPE/wkhtmltopdf" -P /usr/local/bin
sudo chmod +x /usr/local/bin/wkhtmltopdf