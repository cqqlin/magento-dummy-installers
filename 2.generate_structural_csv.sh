#!/bin/bash

if [ ! "$#" -eq 1 ]; then
	echo "Usage: $0 <path_to_data_root_directory>"
	exit 0;
fi

ROOT_PATH=$1
if [[ ! -d $ROOT_PATH ]]; then
	echo "$ROOT_PATH is not a directory"
	exit 0;
fi

OUTPUT_FILE=to_import.csv

java -cp ../tbmangoutils/TBMDataUtils/bin:../tbmangoutils/TBMDataUtils/lib/json-simple-1.1.1.jar:../tbmangoutils/TBMDataUtils/lib/commons-lang-2.6.jar:../tbmangoutils/TBMDataUtils/lib/jaxen-1.1-beta-6.jar:../tbmangoutils/TBMDataUtils/lib/opencsv-2.0.jar com.tbmango.datautil.csv.generator.structural.StructuralCsvGenerator "$ROOT_PATH" > $OUTPUT_FILE

