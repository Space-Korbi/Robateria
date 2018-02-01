//
//  WebViewController.swift
//  Robateria
//
//  Created by Korbinian Baumer on 01.02.18.
//  Copyright © 2018 Korbinian Baumer. All rights reserved.
//


// kann gelöscht werden: DELETABLE

import Foundation
import UIKit
import WebKit

class WebViewController: UIViewController {

    @IBOutlet weak var webView: WKWebView!
    override func viewDidLoad() {
        super.viewDidLoad()
        let url = URL(string:"http://192.168.1.1")
        let request = URLRequest(url: url!)

        //webView.loadHTMLString("192.168.1.1", baseURL: nil)
        webView.load(request)
    }
    
}
