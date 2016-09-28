# OceanTEA

OceanTEA leverages modern web technology to enable the interactive exploration and analysis of high-dimensional oceanographic datasets. Its microservice architecture ensures a maintainable implementation that seamlessly scales from desktop computers to cloud computing infrastructure. 

A live demo of OceanTEA is available at: <http://maui.se.informatik.uni-kiel.de:9090/>

OceanTEA is licensed under the [Apache License Version 2.0](https://www.apache.org/licenses/LICENSE-2.0).

# How to install OceanTEA on...

## ... Mac OS using Docker

1. Download and install [Docker for Mac](https://docs.docker.com/docker-for-mac/)
2. Download the [OceanTEA installation scripts](https://github.com/a-johanson/oceantea/raw/master/scripts/oceantea_docker_mac.zip) and extract the ZIP archive
3. To make all downloaded scripts executalbe, execute from a Terminal: `chmod a+x *.sh`
4. From a Terminal, run
  * `./start.sh` to start OceanTEA
  * `./stop.sh` to stop OceanTEA

**Note that Docker for Mac must be running in order for OceanTEA to work.**

To manage time series, sign in using the username `OTEAUser` with password `default` in the "Manage Time Series" tab.

## ... Windows 10 using Docker

1. Download and install [Docker for Windows](https://docs.docker.com/docker-for-windows/)
2. Download the [OceanTEA installation scripts](https://github.com/a-johanson/oceantea/raw/master/scripts/oceantea_docker_windows.zip) and extract the ZIP archive
3. Run
  * [start.bat](https://github.com/a-johanson/oceantea-build/blob/master/docker/windows/start.bat) to start OceanTEA
  * [stop.bat](https://github.com/a-johanson/oceantea-build/blob/master/docker/windows/stop.bat) to stop OceanTEA

**Note that Docker for Windows must be running in order for OceanTEA to work.**

To manage time series, sign in using the username `OTEAUser` with password `default` in the "Manage Time Series" tab.
