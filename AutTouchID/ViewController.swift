//
//  ViewController.swift
//  AutTouchID
//
//  Created by Bia Plutarco on 02/12/18.
//  Copyright © 2018 Bia Plutarco. All rights reserved.
//

import UIKit
import LocalAuthentication

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    private func touchID() {
        let authenticationContext = LAContext()
        
        authenticationContext.evaluatePolicy(
            .deviceOwnerAuthenticationWithBiometrics,
            localizedReason: "Compre",
            reply: { [unowned self] (success, error) -> Void in
                if( success ) {
                    self.dismiss(animated: true, completion: nil)
                } else {
                    // Do some code here
                }
        })
    }
}

