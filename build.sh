#! /bin/bash
echo "Building docker images"

# Dotnet
./docker-build.sh runtimes/dotnet/core3.1 endelonhosting/images dotnetcore3_1
./docker-build.sh runtimes/dotnet/5.0 endelonhosting/images dotnet5_0
./docker-build.sh runtimes/dotnet/6.0 endelonhosting/images dotnet6_0

# Minecraft
./docker-build.sh minecraft/17/ endelonhosting/images minecraft17
./docker-build.sh minecraft/16/ endelonhosting/images minecraft16
./docker-build.sh minecraft/11/ endelonhosting/images minecraft11
./docker-build.sh minecraft/8/ endelonhosting/images minecraft8

# NodeJS
./docker-build.sh runtimes/nodejs/18/ endelonhosting/images nodejs18
./docker-build.sh runtimes/nodejs/17/ endelonhosting/images nodejs17
./docker-build.sh runtimes/nodejs/16/ endelonhosting/images nodejs16
./docker-build.sh runtimes/nodejs/14/ endelonhosting/images nodejs14
./docker-build.sh runtimes/nodejs/12/ endelonhosting/images nodejs12

# Python
./docker-build.sh runtimes/python/2.7/ endelonhosting/images python2_7
./docker-build.sh runtimes/python/3.7/ endelonhosting/images python3_7
./docker-build.sh runtimes/python/3.8/ endelonhosting/images python3_8
./docker-build.sh runtimes/python/3.9/ endelonhosting/images python3_9
./docker-build.sh runtimes/python/3.10/ endelonhosting/images python3_10