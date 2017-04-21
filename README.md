
[![Build Status](https://travis-ci.org/Brewlab/BrewLive.svg?branch=master)](https://travis-ci.org/Brewlab/Brewlive)



Brewlive Temperature logger for Brewers 
=============

Simple NodeJS server and SQLite3 logger for the DS18B20 digital temperature sensor on the Raspberry Pi.

Description
-----------
A NodeJS server for the DS18B20 GPIO temperature sensor on the Raspberry Pi. The sensor is accessed using the w1-gpio and w1-therm kernel modules in the Raspbian distro. The server parses data from the sensor and returns the temperature and a Unix time-stamp in JSON format, this is then written to an SQLite database on the Pi. A simple front-end is included and served using node-static, which performs ajax calls to the server/database and plots temperature in real time or from a time-series, using the highcharts JavaScript library.

Features
-----
* Up to 3 temperature sensors in parallel
* Live dynamic plotting graph
* logging History graph
* .csv downloader

Files
-----
* load_gpio.sh - bash commands to load kernel modules
* server.js - NodeJS server, returns temperature as JSON, logs to database and serves other static files
* index.html - Main page for Menu access
* temperature_plot.html - example client front-end showing live temperatures
* temperature_log.html - example client front-end showing time-series from database records
* build_database.sh - shell script to create database schema
* sample_database.db - example database with real world data from the Pi recorded in UK Jan-Feb 2013

Dependencies SW
------------
* NodeJS
* Npm 


Dependencies HW
------------
* Raspberry Pi
* 1Wire Probe DS18B20 (3 in this tutorial)
* Internet connexion


Install/Setup
-------------
You should first install on your Rapsberry Pi : - sudo apt-get install nodejs
                                                - sudo apt-get install npm
												
Go to the code directory and follow bellow steps :
1. Run `npm install
2. Run `load_gpio.sh` script as root to load kernel modules for the sensor
3. Run the `build_database.sh` script to create "piTemps3.db". Note this will drop any existing database of the same name in the directory
4. Open "server.js" and edit line containing 1Wire probes with the serial number of your sensors in /sys/bus.
5. In a terminal run "node server.js" to start the server.
6. Open a web browser on the Pi and go to http://localhost:7000/ to access to the Brewlive index . 

References
----------
https://github.com/talltom/PiThermServer

http://www.cl.cam.ac.uk/freshers/raspberrypi/tutorials/temperature/

Screenshots/Images Oncomming
------------------
<p><a href="##"><img src="##" alt="Temperature time-series plot" width="400"></a></p>
<p><a href="##"><img src="##" alt="Temperature plot" width="400"></a></p>
<p><a href="##"><img src="##" width="400"></a></p>

# BrewLive
