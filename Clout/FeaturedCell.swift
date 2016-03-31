//
//  FeaturedCell.swift
//  Clout
//
//  Created by Kyle Lee on 3/31/16.
//  Copyright © 2016 Kilo Loco. All rights reserved.
//

import UIKit

class FeaturedCell: UITableViewCell {
    @IBOutlet weak var FBusinessImage: UIImageView!
    @IBOutlet weak var FBusinessName: UILabel!
    @IBOutlet weak var FBusinessLocation: UILabel!
    @IBOutlet weak var FParticipatingClouters: UILabel!
    @IBOutlet weak var FOfferedRewards: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    
}
