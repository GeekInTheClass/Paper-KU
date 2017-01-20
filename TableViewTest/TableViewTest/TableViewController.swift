//
//  TableViewController.swift
//  TableViewTest
//
//  Created by BumMo Koo on 2016. 10. 15..
//  Copyright © 2016년 BumMo Koo. All rights reserved.
//

import UIKit

class TableViewController: UITableViewController {
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 5
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        switch section {
        case 0: return 3
        case 1: return 6
        case 2: return 7
        case 3: return 10
        case 4: return 2
        default: return 0
        }
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let section = indexPath.section
        
        if section == 0 || section == 1 {
            // Subtitle
            let cell = tableView.dequeueReusableCell(withIdentifier: "subtitle", for: indexPath)
            cell.textLabel?.text = "Section \(indexPath.section) Row \(indexPath.row)"
            return cell
        } else {
            // Basic
            let cell = tableView.dequeueReusableCell(withIdentifier: "basic", for: indexPath)
            cell.textLabel?.text = "Section \(indexPath.section) Row \(indexPath.row)"
            return cell
        }
    }
}
