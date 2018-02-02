# Robateria
This repository is one part of a two part project. The first part explains how to set up a robot that can guide you to a shelf in a prototype library. The Documentation can be found here: ....
This part is the source code for the Robateria app, which serves as a user interface. The app lets you connect to the MSP432P401R LaunchPad via Wifi or Bluetooth. After connecting to the MSP432 you can select a book in order for the robot to guide you to its shelf.

## Getting Started
Download or clone this repository to your Mac and open the Robateria.xcodeproj.
Then simply run the app on your iPhone or iPad and follow the instructions within the app.

## Setup of MSP432
In order to comunicate with the MSP432 you need one of two booster packs:

* The CC3100 BoosterPack (Wifi)
To connect via Wifi to the MSP432P401R we have to use the CC3100 BoosterPack.
Run the Energia code from part one of this project after setting up the hardware ... link ...

* The CC2650 module (Bluetooth)
To connect to the MSP432P401R over Bluetooth we have to connect the CC2650 module to it. Since Bluetooth is not supported by Energia we have to use Code Composer Studio (CCS) and the project zero example from TI to communicate with the MSP432 LaunchPad over Bluetooth. The project zero example can be found in the TI resource explorer under the following link: http://dev.ti.com/tirex/#/. Import the project into CCS Cloud and run it on the MSP432 LaunchPad.

## Running the App

* MSP432 connected to CC3100
Run the Robateria app and select “Wifi” as connectivity option.

The next screen will ask you to connect to the Robateria network. After doing so you can come back to the app and click “Done” in the top right corner. You will be presented with the 16 example books, that are available in our example library. Clicking on one of the books will send the coordinates to Rosi, who will guide you to the corresponding shelf.


* MSP432 connected to CC2650
If you are scanning for Bluetooth devices now, you should find one device by the name of Project Zero. An easy way to connect to the MSP432 is provided by the Robateria app. To communicate with MSP432 simply launch the Robateria app and select Bluetooth as connection method. The next screen will show you a list of available Bluetooth devices. Find Project Zero in the list and select it. You will be presented with a screen that has 16 example books, an LED switch and three color buttons.
Clicking the LED switch or one of the buttons will turn the LED off or change its color. Selecting a book will send the coordinates of the Book to the MSP432 but since the functionality of Rosi was developed in Energia, it is up to the experienced students to transfer the code from Energia into CCS. As the connection and data transfer is already provided by the app and the project zero example, only the line following and the coordinate system has to be added. More details, examples and extensive instructions can be found on https://www.hackster.io/measley2/ble-iot-workshop-for-ti-launchpad-and-sensors-boosterpack-5fdf05.

## Extent/Modify the Code







