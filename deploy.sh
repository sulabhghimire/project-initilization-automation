#!/bin/bash

unset -v projectType
unset -v projectName

while getopts pt:pn: opt; do
        case $opt in
                t) projectType=$OPTARG ;;
                n) projectName=$OPTARG ;;
                *)
                        echo 'Error in command line parsing' >&2
                        exit 1
        esac
done

shift "$(( OPTIND - 1 ))"

if [ -z "$projectType" ] || [ -z "$projectName" ]; then
        echo 'Missing -t i.e projectType or -n i.e. projectName' >&2
        exit 1
fi

projectType="${projectType,,}"

if [ $projectType = "flutter" ]; then
    va=$(python main.py flutter)
    curr_dir=$(pwd)
    cd $va
    flutter create $projectName
    cd $projectName
    code .

    # flutter create $projectName
elif [ $projectType = "fastapi" ]; then
    echo "FastAPI"
elif [ $projectType = "flask" ]; then
    echo "flask"
else
    echo "Invalid project type for now"
fi

echo "$a"