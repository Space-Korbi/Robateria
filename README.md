# Robateria
This repository is one part of a two part project. The first part explains how to set up a robot that can guide you to a shelf in a prototype library. The Documentation can be found here: ....
This part is the source code for the Robateria app, which serves as a user interface. The app lets you connect to the MSP432P401R LaunchPad via Wifi or Bluetooth. After connecting to the MSP432 you can select a book in order for the robot to guide you to the shelf.

## Getting Started
Download or clone this repository to your Mac and open the Robateria.xcodeproj.

## Setup of MSP432
In order to comunicate with the MSP432 you need one of two booster packs:

* The CC3100 BoosterPack (Wifi)
To connect via Wifi to the MSP432P401R we have to use the CC3100 BoosterPack.
Run the Energia code from part one of this project after setting up the hardware ... link ...

* The CC2650 module (Bluetooth)
To connect to the MSP432P401R over Bluetooth we have to connect the CC2650 module to it. Since Bluetooth is not supported by Energia we have to use Code Composer Studio (CCS) and the project zero example from TI to communicate with the MSP432 LaunchPad. The project zero example can be found in the TI resource explorer at the following path: 

![project_zero](https://user-images.githubusercontent.com/32970755/35755294-f7d04d1e-0866-11e8-8029-a2177587e0cf.png)

Import the project into CCS Cloud and run it on the MSP432 LaunchPad.

## Running the App

### MSP432 connected to CC3100

Run the Robateria app and select “Wifi” as connectivity option.

![wifi1](https://user-images.githubusercontent.com/32970755/35755109-459aba08-0866-11e8-86c4-93232e99b850.png)

The next screen will ask you to connect to the Robateria network. After doing so you can come back to the app and click “Done” in the top right corner.

![wifi2](https://user-images.githubusercontent.com/32970755/35755193-906f3f2c-0866-11e8-95a2-850d9e589fdc.png)

You will be presented with the 16 example books, that are available in our example library. Clicking on one of the books will send the coordinates to Rosi, who will guide you to the corresponding shelf.

![wifi3](https://user-images.githubusercontent.com/32970755/35755214-9e9af5be-0866-11e8-8dea-c54816d16272.png)




### MSP432 connected to CC2650

Run the Robateria app and select “Bluetooth” as connectivity option.

![ble1](https://user-images.githubusercontent.com/32970755/35755244-bffa6ece-0866-11e8-8500-81574065dbad.png)

The next screen will show you a list of available Bluetooth devices. Find Project Zero in the list and select it.

![ble2](https://user-images.githubusercontent.com/32970755/35755261-d0c4a922-0866-11e8-8def-9b039fbe28e5.png)

You will be presented with a screen that has 16 example books, an LED switch and three color buttons.

![ble3](https://user-images.githubusercontent.com/32970755/35755273-df306064-0866-11e8-9d8c-be15584e961f.png)

Clicking the LED switch or one of the buttons will turn the LED off/on or change its color. Selecting a book will send the coordinates of the Book to the MSP432 but since the functionality of the robot was developed in Energia, it is up to the experienced experienced developer to transfer the code from Energia into CCS. As the connection and data transfer is already provided by the app and the project zero example, only the line following and the coordinate system has to be implemented. More details, examples and extensive instructions on the the bluetooth connectivity can be found on https://www.hackster.io/measley2/ble-iot-workshop-for-ti-launchpad-and-sensors-boosterpack-5fdf05.

## Extent/Modify the Code
If you like to change, add or delete some of the user interface items, you can do so in the storyboard editor.
In order to change the functionality there are several different classes to consider, depending on the connection used.

### Wifi

All the Wifi functionality can be found in BooksViewController.swift. We begin by initializing the view and setting up the initial url under which we can access the robot. It is simply the ip-address: 192.168.1.1
After that we send a request with that url via a hidden webView. 

![bildschirmfoto 2018-02-02 um 23 04 21](https://user-images.githubusercontent.com/32970755/35757295-b4630712-086e-11e8-9b67-c50c63325f70.png)

By clicking on any of the books all we do is refresh the url and send a  new request to the webView. The robot recieves the new url request and executes the logic, that is connected with that request. In case of the first book the url is 192.168.1.1/1. If more functionality is added to the robot, you simply have to change the url in the app to match the url that is specified in the code in energia.

### Bluetooth
If you like a detailed look on how the Bluetooth connection works look at these tutorials:

If you want to add more functionality, you can do so in CommunicationViewController.swift. Simply add, delete or change the books and the coordinates (Note: changing the names of the books in this class will not change the names displayed to the user). Each book has its own function in which it takes the coordinates from the array of books, creates a data object and sends that data object to the robot.

![bildschirmfoto 2018-02-02 um 23 23 16](https://user-images.githubusercontent.com/32970755/35757824-21994c36-0871-11e8-9b7c-692f72d7ff6c.png)

Since there is no functionality in the project zero example to handle the recieved coordinates, the robot is not going to move when selecting one of the books while connected over Bluetooth. So far, controlling the LED is the only functionlity supported. It is up to you to modify the project zero in CCS in order to add more functionality.

