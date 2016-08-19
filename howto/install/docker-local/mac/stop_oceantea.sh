#!/bin/bash

eval "$(docker-machine env default)"

docker stop oceantea-visualization-gateway-inst
docker stop oceantea-auth-inst
docker stop oceantea-scalar-time-series-inst
docker stop oceantea-vector-time-series-inst
docker stop oceantea-time-series-conversion-inst

docker-machine stop
