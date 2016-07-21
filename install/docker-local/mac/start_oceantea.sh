#!/bin/bash

# NOTE: This is specific for Mac OS!
docker-machine start

eval "$(docker-machine env default)"

echo "Cleaning up build files..."
rm -rf ./build
mkdir ./build
cd ./build

function createImage {
    if [[ "$(docker images -q $1 2> /dev/null)" == "" ]]; then
        echo "Creating image $1"
        git clone https://github.com/a-johanson/$1.git
        docker build -t $1 ./$1/
    else 
        echo "Image $1 already exists"
    fi
}

createImage oceantea-visualization-gateway
createImage oceantea-auth
createImage oceantea-vector-time-series
createImage oceantea-scalar-time-series
createImage oceantea-time-series-conversion

cd ..

function runContainer {
    if [[ "$(docker ps -a | grep $1-inst)" == "" ]]; then
        echo "Container $1-inst does not exist"
        docker run -d ${3:+-v $3} --net=host -p $2:$2 --name="$1-inst" -t $1
    else 
        echo "Container $1-inst already exists"
        docker start $1-inst
    fi
}

runContainer oceantea-visualization-gateway 3333
runContainer oceantea-auth 3332
runContainer oceantea-scalar-time-series 3335 ~/Desktop/OceanTEA/scalar_data:/usr/src/app/data
runContainer oceantea-vector-time-series 3336 ~/Desktop/OceanTEA/vector_data:/usr/src/app/data
runContainer oceantea-time-series-conversion 3337

MACHINEIP="$(docker-machine ip)"
echo "Open http://${MACHINEIP}:3333 in browser..."
# NOTE: This is specific for Mac OS!
open "http://${MACHINEIP}:3333"
