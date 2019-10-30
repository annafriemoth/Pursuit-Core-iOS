//
//  ViewController.swift
//  Flashlight
//
//  Created by Anna Friemoth on 10/29/19.
//  Copyright © 2019 Anna Friemoth. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    
    @IBAction func white(_ sender: UISwitch) {
        
        if sender.isOn {
            view.backgroundColor = .white
        } else {
            view.backgroundColor = .black    
        }
        
//
//        var newColor = (color: UIColor)
//        newColor = (.white)
//
        
    }
    
}

