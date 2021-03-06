//
//  Extensions.swift
//  Alankrutha Collections
//
//  Created by Mithun Raj on 09/06/20.
//  Copyright © 2020 Alankrutha. All rights reserved.
//

import Foundation
import UIKit

extension UIView {
    func roundedViewCorners(cornerRadius: CGFloat) {
        self.layer.cornerRadius = cornerRadius
        self.clipsToBounds = true
    }
}

extension UIViewController {
  func alert(message: String, title: String = "") {
    let alertController = UIAlertController(title: title, message: message, preferredStyle: .alert)
    let OKAction = UIAlertAction(title: "OK", style: .default, handler: nil)
    alertController.addAction(OKAction)
    self.present(alertController, animated: true, completion: nil)
  }
}
