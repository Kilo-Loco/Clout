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
    
    func configureCell(featured: FBusiness) {
       
        self.FBusinessImage.image = featured.image
        self.FBusinessName.text = featured.name
        self.FBusinessLocation.text = featured.location
        self.FParticipatingClouters.text = featured.participants
        self.FOfferedRewards.text = featured.rewards
    }
}
