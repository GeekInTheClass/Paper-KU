//
//  PaperTable.swift
//  CollectionView
//
//  Created by cscoi007 on 2017. 2. 13..
//  Copyright © 2017년 cscoi007. All rights reserved.
//

import Foundation
import UIKit

class PaperTable : UITableViewController{
    
    var Array = [String]()
    
    
    override func viewDidLoad() {
        Array = ["asdfsadf","asdfasdf","asdf"]
        
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return Array.count
    }
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell")!
        
        cell.textLabel?.text = Array[indexPath.row]
        
        return cell
        
    }
    
    
    
}
