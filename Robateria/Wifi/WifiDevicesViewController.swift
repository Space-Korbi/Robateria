//
//  WifiDevicesViewController.swift
//  Robateria
//
//  Created by Korbinian Baumer on 21.01.18.
//  Copyright © 2018 Korbinian Baumer. All rights reserved.
//

// DELETABLE

import Foundation
import UIKit
import MultipeerConnectivity

class WifiDevicesViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var refreshButton: UIBarButtonItem!
    @IBOutlet weak var deviceTable: UITableView!

    var peers: [MCPeerID] = []
    let wifiConnection = WifiConnectionManager()

    var i = 0

    override func viewDidLoad() {
        super.viewDidLoad()
        self.deviceTable.delegate = self
        self.deviceTable.dataSource = self
        self.deviceTable.reloadData()
        peers = wifiConnection.peers
    }

    @IBAction func refreshAction(_ sender: Any) {
        self.deviceTable.reloadData()
        peers.append(MCPeerID(displayName: "Hello World"))
        print(self.peers.count)
        print(self.peers[i])
        i = i+1
    }

    // TableView functions
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.peers.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    let cell = tableView.dequeueReusableCell(withIdentifier: "PeerTableViewCell") as! PeerTableViewCell
    let peer = self.peers[indexPath.row]
    cell.deviceLabel.text = peer.description
    return cell
    }

    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {


    }
}
