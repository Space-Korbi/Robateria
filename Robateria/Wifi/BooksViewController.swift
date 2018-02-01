//
//  BooksViewController.swift
//  Robateria
//
//  Created by Korbinian Baumer on 01.02.18.
//  Copyright © 2018 Korbinian Baumer. All rights reserved.
//

import Foundation
import UIKit
import WebKit

class BooksViewController: UIViewController {

    @IBOutlet weak var webView: WKWebView!

    //Initialize URL and webView
    override func viewDidLoad() {
        super.viewDidLoad()

        let url = URL(string:"http://192.168.1.1")
        let request = URLRequest(url: url!)

        webView.load(request)
    }


    //Clicking a button will reset the URL with the coresponding coordinates and reload the webView

    @IBAction func leftButton1(_ sender: Any) {
        let url = URL(string:"http://192.168.1.1/GH")
        let request = URLRequest(url: url!)

        webView.load(request)
    }

    @IBAction func rightButton1(_ sender: Any) {
        let url = URL(string:"http://192.168.1.1/GL")
        let request = URLRequest(url: url!)

        webView.load(request)
    }

    @IBAction func leftButton2(_ sender: Any) {
        let url = URL(string:"http://192.168.1.1/RH")
        let request = URLRequest(url: url!)

        webView.load(request)
    }

    @IBAction func rightButton2(_ sender: Any) {
        let url = URL(string:"http://192.168.1.1/RL")
        let request = URLRequest(url: url!)

        webView.load(request)
    }

    @IBAction func leftButton3(_ sender: Any) {
        let url = URL(string:"http://192.168.1.1/YH")
        let request = URLRequest(url: url!)

        webView.load(request)
    }

    @IBAction func rightButton3(_ sender: Any) {
        let url = URL(string:"http://192.168.1.1/YL")
        let request = URLRequest(url: url!)

        webView.load(request)
    }

    @IBAction func leftButton4(_ sender: Any) {
        let url = URL(string:"http://192.168.1.1/GH")
        let request = URLRequest(url: url!)

        webView.load(request)
    }

    @IBAction func rightButton4(_ sender: Any) {
        let url = URL(string:"http://192.168.1.1/GL")
        let request = URLRequest(url: url!)

        webView.load(request)
    }
    @IBAction func leftButton5(_ sender: Any) {
        let url = URL(string:"http://192.168.1.1/GH")
        let request = URLRequest(url: url!)

        webView.load(request)
    }

    @IBAction func rightButton5(_ sender: Any) {
        let url = URL(string:"http://192.168.1.1/GL")
        let request = URLRequest(url: url!)

        webView.load(request)
    }

    @IBAction func leftButton6(_ sender: Any) {
        let url = URL(string:"http://192.168.1.1/GH")
        let request = URLRequest(url: url!)

        webView.load(request)
    }

    @IBAction func rightButton6(_ sender: Any) {
        let url = URL(string:"http://192.168.1.1/GL")
        let request = URLRequest(url: url!)

        webView.load(request)
    }

    @IBAction func leftButton7(_ sender: Any) {
        let url = URL(string:"http://192.168.1.1/GH")
        let request = URLRequest(url: url!)

        webView.load(request)
    }

    @IBAction func rightButton7(_ sender: Any) {
        let url = URL(string:"http://192.168.1.1/GL")
        let request = URLRequest(url: url!)

        webView.load(request)
    }

    @IBAction func leftButton8(_ sender: Any) {
        let url = URL(string:"http://192.168.1.1/GH")
        let request = URLRequest(url: url!)

        webView.load(request)
    }

    @IBAction func rightButton8(_ sender: Any) {
        let url = URL(string:"http://192.168.1.1/GL")
        let request = URLRequest(url: url!)

        webView.load(request)
    }

}
