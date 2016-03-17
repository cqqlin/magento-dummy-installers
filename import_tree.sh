#!/bin/bash

if [ ! "$#" -eq 2 ]; then
	echo "Usage: $0 <path_to_mage_root_directory> <path_to_category_tree_file>"
	exit 0;
fi

MAGE_ROOT=$1
if [[ ! -d $MAGE_ROOT ]]; then
	echo "$MAGE_ROOT is not a directory"
	exit 0;
fi

TREE_FILE=$2
if [[ ! -f $TREE_FILE ]]; then
	echo "$TREE_FILE is not a file"
	exit 0;
fi

php category_importer.php "$MAGE_ROOT" "$TREE_FILE"