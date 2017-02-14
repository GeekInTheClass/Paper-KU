//
//  ViewController.swift
//  CollectionView
//
//  Created by cscoi007 on 2017. 2. 11..
//  Copyright © 2017년 cscoi007. All rights reserved.
//

import UIKit
class ViewController: UIViewController, UICollectionViewDataSource, UICollectionViewDelegate {
    
    @IBOutlet weak var Scene1: UIView!
    @IBOutlet weak var Scene2: UIView!
    
  
    
    
    var selectedCell: Int = 0
    var items: [String] = ["1", "2", "3", "4","5", "6", "7", "8",
                                 "9", "10", "11"]
    let reuseIdentifier = "cell" // also enter this string as the cell identifier in the storyboard
    
    // MARK: - UICollectionViewDataSource protocol
    
    // tell the collection view how many cells to make
    override func viewDidLoad() {
        super.viewDidLoad()
        selectedCell = 0
           }
    
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return self.items.count
    }
    
    // make a cell for each cell index path
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        // get a reference to our storyboard cell
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: reuseIdentifier, for: indexPath as IndexPath) as! MyCollectionViewCell
        
        // Use the outlet in our custom class to get a reference to the UILabel in the cell
        cell.myLabel.text = self.items[indexPath.item]

        
        cell.backgroundColor = UIColor.cyan // make cell more visible in our example project
        
        return cell
    }
    
    // MARK: - UICollectionViewDelegate protocol
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        // handle tap events
        selectedCell = indexPath.item
        print("You selected cell #\(indexPath.item)!")
        
            let Scene:[UIView] = [Scene1,Scene2]
        for i in 0...Scene.count-1{
            Scene[i].alpha = 0
            
        }
            Scene[indexPath.item].alpha = 1
        
        
        
    }
}
