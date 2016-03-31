//
//  NearbyVC.swift
//  Clout
//
//  Created by Kyle Lee on 3/31/16.
//  Copyright © 2016 Kilo Loco. All rights reserved.
//

import UIKit

class NearbyVC: CommonVC, UITableViewDataSource, UITableViewDelegate {
    
    @IBOutlet weak var NBTableView: UITableView!
    
    var exampleBusiness = NBBusiness()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.NBTableView.dataSource = self
        self.NBTableView.delegate = self
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        if let cell = tableView.dequeueReusableCellWithIdentifier("NearbyCell") as? NearbyCell {
            cell.configureCell(self.exampleBusiness)
            return cell
        } else {
            return NearbyCell()
        }    }
    
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }
    
    
}
