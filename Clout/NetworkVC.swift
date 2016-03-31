//
//  NetworkVC.swift
//  Clout
//
//  Created by Kyle Lee on 3/31/16.
//  Copyright © 2016 Kilo Loco. All rights reserved.
//

import UIKit

class NetworkVC: CommonVC, UITableViewDataSource, UITableViewDelegate {

    @IBOutlet weak var NWTableView: UITableView!
    
    var exampleClouter = NWClouter()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.NWTableView.dataSource = self
        self.NWTableView.delegate = self
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        if let cell = tableView.dequeueReusableCellWithIdentifier("NetworkCell") as? NetworkCell {
            cell.configureCell(self.exampleClouter)
            return cell
        } else {
            return NetworkCell()
        }
    }
    
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
}
