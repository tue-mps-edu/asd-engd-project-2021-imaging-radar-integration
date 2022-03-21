# ImRad README file
The ImRad project focused on the exploration of the capabilities of the TIDEP-01012 imaging radar evaluation board.
This is a four-chip cascade radar consisting of 4xAWR2243 MMIC transceiver with 4 Tx and 3 Rx antennas each.
This first in-house project was part of the second quartile, it took 6 weeks and was carried out by the ASD trainees of the 2021 batch.



## Table of Content
1. [Acronyms Meaning](#acronyms-meaning)
2. [General Info](#general-info)
3. [Technologies Used](#technologies-used)
4. [Setup, Configuration and Usage](#setup-configuration-and-usage)
5. [Data Analysis](#data-analysis)
6. [Extras](#extras)
7. [Project Status](#project-status)
8. [Possible Improvements and TODOs](#possible-improvements-and-todos)
9. [Acknowledgments](#acknowledgments)
10. [Contacts](#contacts)



## Acronyms Meaning
- ASD: automotive system design
- AV: autonomous vehicle
- EVM: evaluation module
- FMCW: frequency modulated continuous wave
- LiDAR: light detection and ranging
- MMIC: monolithic microwave integrated circuit
- MPSlab: motion & perception systems laboratory
- RaDAR: radio detection and ranging
- RF: radio frequency



## General Info
The MPSlab recently got this new sensor from Texas Istrument, and wanted to perform a preliminary study on its possible usage and its main capabilities.
Therefore, a literature study on imaging radars was conducted and a bechmarking analysis (with respect to other standard automotive sensors, like cameras, RaDARs and LiDARs) was performed.
Then, the needed hardware and software were configured in order to run the sensor: data was first acquired, and then analyzed.
Finally, an integration for the sensor on an AV was proposed and its collected data were compared to data acquired with other AV sensors, namely LiDAR and RaDAR.



## Technologies Used
Here is a list of the technology used for the setup of this project. For more detailed information, please refer to the [Sensor Setup wiki page](https://github.com/tue-mps-edu/asd-pdeng-project-2021-imaging-radar-integration/wiki/1.-Sensor-Setup).
### Hardware
- 12V 5A power supply
- Imaging radar (RF Cascade EVM plus TDA2 Cascade Radar Host Board)
- Laptop with latest version of mmWave Studio installed (refer to the Software configuration section) running Windows (7 or 10)
- Eth cable (with an eth-USB adapter, if needed)
- Mini-USB cable
### Software
- mmWaveStudio 3.0.0.14
- 32-bit Matlab Runtime Engine (Version 8.5.1)
- Microsoft Visual C++ 2013 Redistributable package if using a Windows 10 machine
- TDA2XX Firmware
- Meta image from mmWave DFP 2.2.2
- Serial terminal applications like Tera Term, Putty etc.
- WinSCP
- Balena etcher version 1.5.39



## Setup, Configuration and Usage
Here is how you can setup the sensor and configure the proper scripts to capture some data.
### Sensor Setup
For setting the sensor up and start acquiring data with it, please refer to the first part of the [Device configuration and Data capturing by using mmWave studio](https://github.com/tue-mps-edu/asd-pdeng-project-2021-imaging-radar-integration/wiki/2.-Device-configuration-and-Data-capturing-by-using-mmWave-studio) wiki page.
This is a document that provides a simple guideline for capturing data by using mmWave-studio-2G.
### Sensor Configuration
If you want to learn more about how to configure the sensor and how to set the chirp parameters (with some theory background also), please go to the [System parameters and system configuration using LUA Scripts](https://github.com/tue-mps-edu/asd-pdeng-project-2021-imaging-radar-integration/wiki/System-parameters-and-system-configuration-using-LUA-Scripts) wiki page.
This will give you a main overview about FMCW radar sensors and chirp parameters.
### Sensor Usage
Once the sensor has been plugged, you can easily play it by following the second part of the [Device configuration and Data capturing by using mmWave studio](https://github.com/tue-mps-edu/asd-pdeng-project-2021-imaging-radar-integration/wiki/2.-Device-configuration-and-Data-capturing-by-using-mmWave-studio) wiki page.
This second part will give you hints on how to capture data using Lua scripts.



## Data Analysis
In this section everything related to data processing is presented.
### Data Visualization
You can visualize data by doing what is mentioned in the [Data visualization](https://github.com/tue-mps-edu/asd-pdeng-project-2021-imaging-radar-integration/wiki/4.-Data-visualization) wiki page.
This document outlines the basics of post-processing and data visualization of the captured data.
### 3D Point Cloud
If you want to generate the 3D point cloud of the acquired data, then refer to the [Post Processing for 3D point cloud](https://github.com/tue-mps-edu/asd-pdeng-project-2021-imaging-radar-integration/wiki/5.-Post-Processing-for-3D-point-cloud) wiki page.
This wiki page explains how to get the 3D point cloud and the heat map by using a Matlab script.
### Clustering Techniques
Refer to the [Sensor Data Analysis](https://github.com/tue-mps-edu/asd-pdeng-project-2021-imaging-radar-integration/wiki/6.-Sensor-Data-Analysis) wiki page to know something more about data transfer and processing, and clustering techniques.


## Extras
In this section you can find additional information about the project.
### Test Log
Different use-case scenarios were used during the project, based on what feature of the sensor to explore or which configuration parameter to test.
You can find all the info about the taken tests in the Excel sheet present in the main directory. The [Test log and Test plan](https://github.com/tue-mps-edu/asd-pdeng-project-2021-imaging-radar-integration/wiki/9.-Test-log-and-Test-plan) wiki page contains hints on how this document is structured.
### Point Cloud Density Increase
From the measurtement results it clearly emerged that the density of the imaging radar point cloud is quite scarse with respect to the one of the LiDAR.
Therefore, in the [Increase Point Cloud Density and Number of Frames](https://github.com/tue-mps-edu/asd-pdeng-project-2021-imaging-radar-integration/wiki/3.-Increase-Point-Cloud-Density-and-Number-of-Frames) wiki page you can find some suggestions on how to do it.


## Project Status
The project is complete: the 6 weeks of time scheduled for the first in-house project of the ASD program are over.


## Possible Improvements and TODOs
Here is a list of possible improvements for the project and TODOs:
- live streaming of data: live streaming is still not possible, so a further investigation about its feasibility is needed;
- data transfer: data transfer is still quite slow, so it could be a strong improvement to the project to find alternative or better ways of transfering data, if there are any;
- AV integration: automatixe the data capturing and transfering so that it is possible to do it inside the AV without going through mmWaveStudio.

## Acknowledgments


## Contacts
For any question about the project, please feel free to contact the following persons:
- [Pavol Jancura, Education and Research Technician of the Electrical Engineering department at TU/e](https://www.tue.nl/en/research/researchers/pavol-jancura/).
- [Secretary of the ASD program](https://www.tue.nl/en/education/graduate-school/pdeng-automotive-systems-design/).


---
asd-pdeng-project-2021-imaging-radar-integration created by GitHub Classroom
