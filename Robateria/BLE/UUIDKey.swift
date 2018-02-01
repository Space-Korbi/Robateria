//
//  UUIDKey.swift
//  Robateria
//
//  Created by Korbinian Baumer on 14.01.18.
//  Copyright © 2018 Korbinian Baumer. All rights reserved.
//

import CoreBluetooth

//Uart Service uuid

let kBLEService0_UUID = "Device Information"
let kBLEService1_UUID = "F0001110-0451-4000-B000-000000000000"
let kBLEService2_UUID = "F0001120-0451-4000-B000-000000000000"
let kBLEService3_UUID = "F0001130-0451-4000-B000-000000000000"

let Service0UUID = CBUUID(string: kBLEService1_UUID)
let Service1UUID = CBUUID(string: kBLEService1_UUID)
let Service2UUID = CBUUID(string: kBLEService2_UUID)
let Service3UUID = CBUUID(string: kBLEService3_UUID)

let MaxCharacters = 60


/*
let kBLE_Characteristic_uuid_Tx = "f0001112-0451-4000-b000-000000000000"

let BLE_Characteristic_uuid_Tx = CBUUID(string: kBLE_Characteristic_uuid_Tx)//(Property = Write without response)

let kBLEService_UUID2 = "f0001110-0451-4000-b000-000000000000"
let kBLE_Characteristic_uuid_Tx2 = "f0001111-0451-4000-b000-000000000000"
let kBLE_Characteristic_uuid_Rx2 = "f0001112-0451-4000-b000-000000000000"

let BLEService_UUID2 = CBUUID(string: kBLEService_UUID2)
let BLE_Characteristic_uuid_Tx2 = CBUUID(string: kBLE_Characteristic_uuid_Tx2)//(Property = Write without response)
let BLE_Characteristic_uuid_Rx2 = CBUUID(string: kBLE_Characteristic_uuid_Rx2)// (Property = Read/Notify)

let kBLEService_UUID3 = "f0001120-0451-4000-b000-000000000000"
let kBLEService_UUID4 = "f0001130-0451-4000-b000-000000000000"

let BLEService_UUID3 = CBUUID(string: kBLEService_UUID3)
let BLEService_UUID4 = CBUUID(string: kBLEService_UUID4)
 */

