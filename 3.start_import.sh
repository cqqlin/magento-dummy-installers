#!/bin/bash

if [ ! "$#" -eq 1 ]; then
	echo "Usage: $0 <path_to_mage_root_directory>"
	exit 0;
fi

MAGE_ROOT=$1
if [[ ! -d $MAGE_ROOT ]]; then
	echo "$MAGE_ROOT is not a directory"
	exit 0;
fi

php category_importer.php "$MAGE_ROOT"