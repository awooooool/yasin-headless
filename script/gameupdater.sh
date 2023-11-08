#!/bin/bash

{
    echo saveworld;
    sleep 10;
    echo shutdown;
    sleep 10;
} | telnet localhost 8081;
steamcmd +force_install_dir /7daystodie +login anonymous +app_update 294420 +quit;