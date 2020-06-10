//
//  ViewController.swift
//  Alankrutha Collections
//
//  Created by Arun Aravindakshan on 31/05/20.
//  Copyright © 2020 Alankrutha. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var signInBtn: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        signInBtn.layer.cornerRadius = 18.0
        signInBtn.layer.masksToBounds = true
        // Do any additional setup after loading the view.
    }


}

