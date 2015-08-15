#/bin/bash

if [ ! "$#" -eq 1 ]; then
	echo "Usage: $0 <path_to_root_directory>"
	exit 0;
fi

ROOT_PATH=$1


if [[ ! -d $ROOT_PATH ]]; then
	echo "$1 is not a directory"
	exit 0;
fi


java -cp ../tbmangoutils/TBMDataUtils/bin:../tbmangoutils/TBMDataUtils/lib/json-simple-1.1.1.jar com.tbmango.datautil.category.CategoryTreeFileGenerator $ROOT_PATH