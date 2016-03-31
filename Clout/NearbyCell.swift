//
//  NearbyCell.swift
//  Clout
//
//  Created by Kyle Lee on 3/31/16.
//  Copyright © 2016 Kilo Loco. All rights reserved.
//

import UIKit

class NearbyCell: UITableViewCell {
    
    @IBOutlet weak var NBBusinessImage: UIImageView!
    @IBOutlet weak var NBBusinessNameLbl: UILabel!
    @IBOutlet weak var NBBusinessIndustryLbl: UILabel!
    @IBOutlet weak var NBBusinessDistanceLabel: UILabel!
    @IBOutlet weak var NBUserTransactionsLbl: UILabel!
    @IBOutlet weak var NBUserEarnedLbl: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    func configureCell(nearby: NBBusiness) {
        
        self.NBBusinessImage.image = nearby.image
        self.NBBusinessNameLbl.text = nearby.name
        self.NBBusinessIndustryLbl.text = nearby.industry
        self.NBBusinessDistanceLabel.text = nearby.distance
        self.NBUserTransactionsLbl.text = nearby.transactions
        self.NBUserEarnedLbl.text = nearby.earnings
    }
}
