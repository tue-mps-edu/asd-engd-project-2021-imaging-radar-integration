# ImRad README file
The ImRad project focused on the exploration of the capabilities of the TIDEP-01012 imaging radar evaluation board, by Texas Instrument.
This is a four-chip cascade radar consisting of 4xAWR2243 MMIC transceiver with 4 Tx and 3 Rx antennas each.

This first in-house project was part of the second quartile, it took 6 weeks and was carried out by the ASD trainees of the 2021 batch.

Please find a more accurate description of the project in the [Home](https://github.com/tue-mps-edu/asd-pdeng-project-2021-imaging-radar-integration/wiki) wiki page.

## Table of Content
1. [Acronyms Meaning](#acronyms-meaning)
2. [General Info](#general-info)
3. [Repo Structure](#repo-structure)
4. [Technologies Used](#technologies-used)
5. [Setup, Configuration and Usage](#setup-configuration-and-usage)
6. [Data Analysis](#data-analysis)
7. [Extras](#extras)
8. [Project Status](#project-status)
9. [Possible Improvements and TODOs](#possible-improvements-and-todos)
10. [Acknowledgments](#acknowledgments)
11. [Contacts](#contacts)



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
Therefore, a literature study on imaging radars was conducted and a bechmarking analysis (with respect to other standard automotive sensors, like RaDARs and LiDARs) was performed.
Then, the needed hardware and software were configured in order to run the sensor: data was first acquired, and then analyzed.
Finally, an integration for the sensor on an AV was proposed and collected data were compared to data acquired with other AV sensors, namely LiDAR.


## Repo Structure
The main branch of the project repository is structured in the following way:
- in the [PDF](https://github.com/tue-mps-edu/asd-pdeng-project-2021-imaging-radar-integration/tree/master/PDF) folder you can find all the documents about the sensor and the mmWave studio software provided by TI:
  - [mmwave_studio_cascade_user_guide.pdf](https://github.com/tue-mps-edu/asd-pdeng-project-2021-imaging-radar-integration/blob/master/PDF/mmwave_studio_cascade_user_guide.pdf) and [mmwave_studio_user_guide.pdf](https://github.com/tue-mps-edu/asd-pdeng-project-2021-imaging-radar-integration/blob/master/PDF/mmwave_studio_user_guide.pdf) are the two user guides (one is for the cascade sensor, the second one is for the single AWRXXXX transceiver) for the mmWave studio software, needed for configuring the sensor and acquiring data. Please mainly refer to the first pdf;
  - [sensor user guide.pdf](https://github.com/tue-mps-edu/asd-pdeng-project-2021-imaging-radar-integration/blob/master/PDF/sensor%20user%20guide.pdf) is the user guide of the sensor board. Everything related to the evaluation board is described here (how to get started, hardware structure, software tools, etc.);
  - [tidue71d.pdf](https://github.com/tue-mps-edu/asd-pdeng-project-2021-imaging-radar-integration/blob/US4.4/PDF/tidue71d.pdf) is a demonstration of the usage of a mmWave radar sensor by TI;
- [image for device config and data capturing](https://github.com/tue-mps-edu/asd-pdeng-project-2021-imaging-radar-integration/tree/master/image%20for%20device%20config%20and%20data%20capturing) folder contains images about the setup for the configuration of the sensor and the sata capturing;
- [images](https://github.com/tue-mps-edu/asd-pdeng-project-2021-imaging-radar-integration/tree/master/images) folder contains general purpose images, used in the wiki pages of the project;
- [Data readers](https://github.com/tue-mps-edu/asd-pdeng-project-2021-imaging-radar-integration/tree/US2.2/Data%20readers) folder contains the MATLAB scripts used for analyzing captured data:
  - [data_reader_radar_MIMO.m](https://github.com/tue-mps-edu/asd-pdeng-project-2021-imaging-radar-integration/blob/US2.2/Data%20readers/data_reader_radar_MIMO.m) is the MATLAB file used to generate the 3D point cloud;
- [DataAnalysis](https://github.com/tue-mps-edu/asd-pdeng-project-2021-imaging-radar-integration/tree/US2.3/DataAnalysis) folder contains all the material related to data analysis, as the name says:
  - [KMeans_PCD-checkpoint.ipynb](https://github.com/tue-mps-edu/asd-pdeng-project-2021-imaging-radar-integration/blob/US2.3/DataAnalysis/.ipynb_checkpoints/KMeans_PCD-checkpoint.ipynb) (inside the .ipynb_checkpoints folder) is the main Jupyter notebook used to cluster the data (including data cleaning);
  - [Comparison of Lidar data to Radar Data.ipynb](https://github.com/tue-mps-edu/asd-pdeng-project-2021-imaging-radar-integration/blob/US2.3/DataAnalysis/Comparison%20of%20Lidar%20data%20to%20Radar%20Data.ipynb) is the Jupyter notebook used to compare the LiDAR and the sensor data;
  - [KMeans_PCD.ipynb](https://github.com/tue-mps-edu/asd-pdeng-project-2021-imaging-radar-integration/blob/US2.3/DataAnalysis/KMeans_PCD.ipynb) is the basic version of the Jupyter notebook used for clustering;
  - [PCDSample1.csv](https://github.com/tue-mps-edu/asd-pdeng-project-2021-imaging-radar-integration/blob/US2.3/DataAnalysis/PCDSample1.csv), [PCDSample3_mergedframes.csv](https://github.com/tue-mps-edu/asd-pdeng-project-2021-imaging-radar-integration/blob/US2.3/DataAnalysis/PCDSample3_mergedframes.csv) and [PCDSample3_oneframe.csv](https://github.com/tue-mps-edu/asd-pdeng-project-2021-imaging-radar-integration/blob/US2.3/DataAnalysis/PCDSample3_oneframe.csv) are .csv files containing data captured with the sensor;
- [sensor configuration templates](https://github.com/tue-mps-edu/asd-pdeng-project-2021-imaging-radar-integration/tree/US3.1/sensor%20configuration%20templates) folder contains the .lua script templates used for configuring the sensor:
  - [dynamic measurement](https://github.com/tue-mps-edu/asd-pdeng-project-2021-imaging-radar-integration/tree/US3.1/sensor%20configuration%20templates/dynamic%20measurement) folder is for dynamic measurements:
    - [Cascade_Capture.lua](https://github.com/tue-mps-edu/asd-pdeng-project-2021-imaging-radar-integration/blob/US3.1/sensor%20configuration%20templates/dynamic%20measurement/Cascade_Capture.lua) is used for data capturing;
    - [Cascade_Configuration_MIMO_15 meters.lua](https://github.com/tue-mps-edu/asd-pdeng-project-2021-imaging-radar-integration/blob/US3.1/sensor%20configuration%20templates/dynamic%20measurement/Cascade_Configuration_MIMO_15%20meters.lua) is used for 15m measurement configuration;
    - [Cascade_Configuration_MIMO_60 meters.lua](https://github.com/tue-mps-edu/asd-pdeng-project-2021-imaging-radar-integration/blob/US3.1/sensor%20configuration%20templates/dynamic%20measurement/Cascade_Configuration_MIMO_60%20meters.lua) is used for 60m measurement configuration;
  - [static measurement](https://github.com/tue-mps-edu/asd-pdeng-project-2021-imaging-radar-integration/tree/US3.1/sensor%20configuration%20templates/static%20measurement) folder is for static measurements:
    - [Cascade_Configuration_MIMO_15 meters.lua](https://github.com/tue-mps-edu/asd-pdeng-project-2021-imaging-radar-integration/blob/US3.1/sensor%20configuration%20templates/static%20measurement/Cascade_Configuration_MIMO_15%20meters.lua) is used for 15m measurement configuration;
    - [Cascade_Configuration_MIMO_150 meters.lua](https://github.com/tue-mps-edu/asd-pdeng-project-2021-imaging-radar-integration/blob/US3.1/sensor%20configuration%20templates/static%20measurement/Cascade_Configuration_MIMO_150%20meters.lua) is used for 150m measurement configuration;
    - [Cascade_Configuration_MIMO_60 meters.lua](https://github.com/tue-mps-edu/asd-pdeng-project-2021-imaging-radar-integration/blob/US3.1/sensor%20configuration%20templates/static%20measurement/Cascade_Configuration_MIMO_60%20meters.lua) is used for 60m measurement configuration;



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
### Sensor Technology Comparison and Benchmarking Analysis
Thanks to this project, it was possible to perform a benchmarking analysis about the main setection sensors used on a vehicle. The results of this investigation are highlighted in the [Sensor Technologies Comparison](https://github.com/tue-mps-edu/asd-pdeng-project-2021-imaging-radar-integration/wiki/4.-Sensor-Technologies-Comparison) and in the [Benchmarking Results](https://github.com/tue-mps-edu/asd-pdeng-project-2021-imaging-radar-integration/wiki/3.1-Benchmarking-Results) wiki pages.
### Sensor Integration
Finally, a strategy for sensor integration within the AV of the Automotive Lab of the university is proposed in the [Sensor Integration](https://github.com/tue-mps-edu/asd-pdeng-project-2021-imaging-radar-integration/wiki/3.2-Sensor-Integration) wiki page.

## Project Status
The project is complete: the 6 weeks of time scheduled for the first in-house project of the ASD program are over.


## Possible Improvements and TODOs
Here is a list of possible improvements for the project and TODOs:
- live streaming of data: live streaming is still not possible, so a further investigation about its feasibility is needed;
- data transfer: data transfer is still quite slow, so it could be a strong improvement to the project to find alternative or better ways of transfering data, if there are any;
- AV integration: automatixe the data capturing and transfering so that it is possible to do it inside the AV without going through mmWaveStudio.

## Acknowledgments
Apart from team effort, the work carried out and the results achieved during this project were possible thanks to the technical guidance of the MPSlab, the valuable feedback provided by TI engineers, and the precious comments made by the main stakeholder, dr. Pavol Jancura, who steered the project in the direction it took during the weeks.


## Contacts
For any question about the project, please feel free to contact the following persons:
- [Pavol Jancura, Education and Research Technician of the Electrical Engineering department at TU/e](https://www.tue.nl/en/research/researchers/pavol-jancura/).
- [Secretary of the ASD program](https://www.tue.nl/en/education/graduate-school/pdeng-automotive-systems-design/).


---
asd-pdeng-project-2021-imaging-radar-integration created by GitHub Classroom
