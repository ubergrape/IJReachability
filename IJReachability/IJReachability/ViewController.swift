//
//  ViewController.swift
//  IJReachability
//
//  Created by Isuru Nanayakkara on 1/14/15.
//  Copyright (c) 2015 Appex. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var availabilityLabel: UILabel!
    @IBOutlet weak var connectionTypeLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    @IBAction func checkButtonTapped(_ sender: UIButton) {
        
        if IJReachability.isConnectedToNetwork() {
            availabilityLabel.text = "Network Connection: Available"
            availabilityLabel.textColor = UIColor.green
        } else {
            availabilityLabel.text = "Network Connection: Unavailable"
            availabilityLabel.textColor = UIColor.red
        }
        
        let statusType = IJReachability.isConnectedToNetworkOfType()
        switch statusType {
        case .wwan:
            connectionTypeLabel.text = "Connection Type: Mobile"
            connectionTypeLabel.textColor = UIColor.yellow
        case .wiFi:
            connectionTypeLabel.text = "Connection Type: WiFi"
            connectionTypeLabel.textColor = UIColor.green
        case .notConnected:
            connectionTypeLabel.text = "Connection Type: Not connected to the Internet"
            connectionTypeLabel.textColor = UIColor.red
        }
    }
}

