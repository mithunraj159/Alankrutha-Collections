//
//  SignUpViewController.swift
//  Alankrutha Collections
//
//  Created by Mithun Raj on 09/06/20.
//  Copyright © 2020 Alankrutha. All rights reserved.
//

import UIKit

class SignUpViewController: UIViewController {
    @IBOutlet weak var signUpButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setUpUI()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(true)
    // Hide the Navigation Bar
            self.navigationController?.setNavigationBarHidden(true, animated: true)
        }

    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(true)
    // Show the Navigation Bar
            self.navigationController?.setNavigationBarHidden(false, animated: false)
        }

    @IBAction func signUpButtonClicked(_ sender: Any) {
        navigationController?.popViewController(animated: true)
    }
}

//MARK :- Basic Functionalities is being implemented in this extension
extension SignUpViewController {
    func setUpUI() {
        signUpButton.roundedViewCorners(cornerRadius: 18.0)
    }
}
