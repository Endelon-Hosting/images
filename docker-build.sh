#!/bin/bash
#
# Usage: ./docker-build.sh </dir/to/dockerfile> <remote-registry-prefix>
#
# Example: ./docker-build.sh node-agent-service 10.0.1.16:5000/inaetics
#
# needs docker command (v1.3 or later) in order to work.
#
# (C) 2015 - jawi - licensed under Apache Public License v2.

dir=$1
prefix=$2

echo -e "Building ${dir}"

# determine the names we should use for the docker-registry...
#dir=$(echo "$dir" | sed -r 's#/$##g')
name=${3:-$dir}
name=$(echo "$name" | sed -r 's#/$##g')
remote_name=$(echo "$prefix:$name" | sed -r 's#/+#/#g')

if [[ $EUID -ne 0 ]]; then
    echo "This script might need root permissions to run..."
fi

id=$(echo $(docker build --quiet=true $dir 2>build.log) | awk '{print $NF}')
echo "ID: $id"
docker tag $id "$remote_name"
docker push "$remote_name"