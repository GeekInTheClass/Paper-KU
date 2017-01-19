//
//  ViewController.swift
//  HelloiPhone
//
//  Created by cscoi005 on 2017. 1. 19..
//  Copyright © 2017년 PSJ. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var MyLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func change(_ sender: Any) {
        MyLabel.text = "Hello iPhone"
    }

    @IBAction func rollback(_ sender: Any) {
        MyLabel.text = "Hello World"
    }
    @IBAction func ChangeFontColor(_ sender: Any) {
        MyLabel.textColor = UIColor.red
    }
    
    @IBAction func ChangeGroundColor(_ sender: Any) {
        MyLabel.backgroundColor = UIColor.yellow
    }

}

