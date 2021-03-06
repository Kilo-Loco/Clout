//
//  FeatureVC.swift
//  Clout
//
//  Created by Kyle Lee on 3/31/16.
//  Copyright © 2016 Kilo Loco. All rights reserved.
//

import UIKit

class FeaturedVC: CommonVC, UITableViewDataSource, UITableViewDelegate {
    
    @IBOutlet weak var FTableView: UITableView!
    
    var exampleFeature = FBusiness()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.FTableView.dataSource = self
        self.FTableView.delegate = self
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        if let cell = tableView.dequeueReusableCellWithIdentifier("FeaturedCell") as? FeaturedCell {
            cell.configureCell(self.exampleFeature)
            return cell
        } else {
            return FeaturedCell()
        }
    }
    
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }
}
