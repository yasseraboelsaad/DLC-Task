//
//  ViewController.swift
//  DLC-Task
//
//  Created by Yasser Abouel-Saad on 1/8/17.
//  Copyright © 2017 Yasser Abouel-Saad. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {

    @IBOutlet var loginWithFbButton: UIButton!
    @IBOutlet var signInButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        signInButton.layer.cornerRadius = 25
        signInButton.layer.borderWidth = 1
        signInButton.layer.borderColor = UIColor.clear.cgColor
        
        loginWithFbButton.layer.cornerRadius = 25
        loginWithFbButton.layer.borderWidth = 1
        loginWithFbButton.layer.borderColor = UIColor.clear.cgColor
        
        self.hideKeyboardWhenTappedAround()
    }
    
    override var preferredStatusBarStyle: UIStatusBarStyle {
        return .lightContent
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

extension UIViewController {
    func hideKeyboardWhenTappedAround() {
        let tap: UITapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(UIViewController.dismissKeyboard))
        tap.cancelsTouchesInView = false
        view.addGestureRecognizer(tap)
    }
    
    func dismissKeyboard() {
        view.endEditing(true)
    }
}
