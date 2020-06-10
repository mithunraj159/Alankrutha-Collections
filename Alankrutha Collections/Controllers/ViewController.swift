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
    
// MARK: - SignIn Button Click Action
    @IBAction func signInButtonClicked(_ sender: UIButton) {
        pushToSignUpController()
    }
    
}

//MARK :- Basic Functionalities is being implemented in this extension
extension ViewController {
    func setUpUI() {
        signInBtn.roundedViewCorners(cornerRadius: 18.0)
    }
    
    // Function to push to sign up controller
    func pushToSignUpController() {
        if let signUpVC = UIStoryboard(name: Constants.Storyboards.mainStoryboard, bundle: nil).instantiateViewController(withIdentifier: Constants.Controllers.signUpController) as? SignUpViewController {
            
            if let navigator = navigationController {
                navigator.pushViewController(signUpVC, animated: true)
            }
        }
    }
}

