#!/bin/bash

set -o errexit
set -o nounset

#
#Loads list of nodes from $HOME/address_nodes and sends image from stdin to all nodes
#

#example: docker save <image> | ssh bastion "./distribute-docker-image.sh"


echo "Saving image to bastion."

IMAGE="default-image"

cat > $IMAGE

/home/ubuntu/scripts/distribute-local-docker-image.sh $IMAGE;
