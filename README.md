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
To connect to the MSP432P401R over Bluetooth we have to connect the CC2650 module to it. Since Bluetooth is not supported by Energia we have to use Code Composer Studio (CCS) and the project zero example from TI to communicate with the MSP432 LaunchPad over Bluetooth. The project zero example can be found in the TI resource explorer in the following path: 

![project_zero](https://user-images.githubusercontent.com/32970755/35755294-f7d04d1e-0866-11e8-8029-a2177587e0cf.png)

Import the project into CCS Cloud and run it on the MSP432 LaunchPad.

## Running the App

* MSP432 connected to CC3100

Run the Robateria app and select “Wifi” as connectivity option.

![wifi1](https://user-images.githubusercontent.com/32970755/35755109-459aba08-0866-11e8-86c4-93232e99b850.png)

The next screen will ask you to connect to the Robateria network. After doing so you can come back to the app and click “Done” in the top right corner.

![wifi2](https://user-images.githubusercontent.com/32970755/35755193-906f3f2c-0866-11e8-95a2-850d9e589fdc.png)

You will be presented with the 16 example books, that are available in our example library. Clicking on one of the books will send the coordinates to Rosi, who will guide you to the corresponding shelf.

![wifi3](https://user-images.githubusercontent.com/32970755/35755214-9e9af5be-0866-11e8-8dea-c54816d16272.png)


* MSP432 connected to CC2650
If you are scanning for Bluetooth devices now, you should find one device by the name of Project Zero. An easy way to connect to the MSP432 is provided by the Robateria app. To communicate with MSP432 simply launch the Robateria app and select Bluetooth as connection method. 

![ble1](https://user-images.githubusercontent.com/32970755/35755244-bffa6ece-0866-11e8-8500-81574065dbad.png)

The next screen will show you a list of available Bluetooth devices. Find Project Zero in the list and select it.

![ble2](https://user-images.githubusercontent.com/32970755/35755261-d0c4a922-0866-11e8-8def-9b039fbe28e5.png)

You will be presented with a screen that has 16 example books, an LED switch and three color buttons.

![ble3](https://user-images.githubusercontent.com/32970755/35755273-df306064-0866-11e8-9d8c-be15584e961f.png)

Clicking the LED switch or one of the buttons will turn the LED off or change its color. Selecting a book will send the coordinates of the Book to the MSP432 but since the functionality of Rosi was developed in Energia, it is up to the experienced students to transfer the code from Energia into CCS. As the connection and data transfer is already provided by the app and the project zero example, only the line following and the coordinate system has to be added. More details, examples and extensive instructions can be found on https://www.hackster.io/measley2/ble-iot-workshop-for-ti-launchpad-and-sensors-boosterpack-5fdf05.

## Extent/Modify the Code







