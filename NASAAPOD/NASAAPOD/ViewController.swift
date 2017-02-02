//
//  ViewController.swift
//  NASAAPOD
//
//  Created by cscoi005 on 2017. 1. 31..
//  Copyright © 2017년 PSJ. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var apodImageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        guard let url = URL(string:"http://api.nasa.gov/planetary/apod?api_key=DEMO_KEY") else {
            return
        }
        
        let apodRequest = URLRequest(url: url)
        
        let sharedSession = URLSession.shared
        
        let jsonTask = sharedSession.dataTask(with: apodRequest, completionHandler: { (data:Data?, response:URLResponse?, error:Error? ) -> Void in
            
            do {
            let jsonParser = try JSONSerialization.data(withJSONObject: data, options: [JSONSerialization.WritingOptions.prettyPrinted])
            print("\(jsonParser)")
                
            } catch{}
            
        })
        
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

