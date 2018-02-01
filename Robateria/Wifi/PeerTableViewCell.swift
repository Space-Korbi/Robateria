//
//  PeerTableViewCell.swift
//  Robateria
//
//  Created by Korbinian Baumer on 21.01.18.
//  Copyright © 2018 Korbinian Baumer. All rights reserved.
//

//DELETABLE

import Foundation
import UIKit

class PeerTableViewCell: UITableViewCell {

    @IBOutlet weak var deviceLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        // Configure the view for the selected state
    }
    
}
