//
//  NetworkCell.swift
//  Clout
//
//  Created by Kyle Lee on 3/31/16.
//  Copyright © 2016 Kilo Loco. All rights reserved.
//

import UIKit

class NetworkCell: UITableViewCell {
    @IBOutlet weak var NWClouterImage: UIImageView!
    @IBOutlet weak var NWClouterName: UILabel!
    @IBOutlet weak var NWClouterEmail: UILabel!
    @IBOutlet weak var NWClouterScore: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    func configureCell(clouter: NWClouter) {
        self.NWClouterImage.image = clouter.image
        self.NWClouterName.text = clouter.name
        self.NWClouterEmail.text = clouter.email
        self.NWClouterScore.text = clouter.score
    }
    
}
