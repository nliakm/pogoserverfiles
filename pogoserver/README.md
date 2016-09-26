## credits to maierfelix: serverfiles from https://github.com/maierfelix/POGOserver (i only modified the dockerfile and created the docker-compose and .bat files)

````
                              ______ _____ _____ _____                               
                              | ___ \  _  |  __ \  _  |                              
                              | |_/ / | | | |  \/ | | | ___  ___ _ ____   _____ _ __ 
                              |  __/| | | | | __| | | |/ __|/ _ \ '__\ \ / / _ \ '__|
                              | |   \ \_/ / |_\ \ \_/ /\__ \  __/ |   \ V /  __/ |   
                              \_|    \___/ \____/\___/ |___/\___|_|    \_/ \___|_|   
````
<div align="center">
  <a href="#">
    <img src="https://img.shields.io/badge/Pokemon%20GO-0.35.0-blue.svg?style=flat-square" />
  </a>
  <a href="https://github.com/maierfelix/POGOserver/blob/master/LICENSE">
    <img src="https://img.shields.io/badge/GNU GPL-License-blue.svg?style=flat-square" />
  </a>
  <a href="https://nodejs.org/api/documentation.html#documentation_stability_index">
    <img src="https://img.shields.io/badge/stability-experimental-orange.svg?style=flat-square" alt="Stability" />
  </a>
</div>

<img width="25%" src="http://i.imgur.com/7VhPleu.png" />
<img width="24%" src="http://i.imgur.com/E82eqtk.png" />
<img width="24%" src="http://i.imgur.com/H692S9d.png" />
<img width="25%" src="http://i.imgur.com/LGrdUeH.png" />

# Getting started

## Setup
Open ``cfg.js`` and fill the following fields:

````js
DOWNLOAD_PROVIDER: "GOOGLE";
DOWNLOAD_USERNAME: "USERNAME";
DOWNLOAD_PASSWORD: "PASSWORD";
````

## Tunneling setup
The pokemon go app traffic has to get forwarded manually to this custom server. Download [rastapasta](https://github.com/rastapasta)'s [Pokemon Go Xposed](https://github.com/rastapasta/pokemon-go-xposed/releases) app and follow the installation instructions [here](https://github.com/rastapasta/pokemon-go-xposed#how-to-use-it).

## Database setup

To setup a database connection, open ``cfg.js`` and change the database login credentials:

````js
MYSQL_PORT: 3306,
MYSQL_HOST_IP: "127.0.0.1",
MYSQL_DB_NAME: "pogosql",
MYSQL_USERNAME: "root",
MYSQL_PASSWORD: "",
````

The required database tables get generated automatically.

## Docker setup

1. open docker-compose file.
2. edit the "volumes" - paths
3. edit the "build" - path to where the dockerfile is located
4. save the changes.
5. run the install.bat
6. Done.

Note: Instead of automatically mapping the ports, map them static, so they don't change after reboot.
