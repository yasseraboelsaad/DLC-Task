//
//  ViewController.swift
//  DLC-Task
//
//  Created by Yasser Abouel-Saad on 1/8/17.
//  Copyright © 2017 Yasser Abouel-Saad. All rights reserved.
//

import UIKit
import CoreLocation

class LoginViewController: UIViewController{

    @IBOutlet var passwordText: UITextField!
    @IBOutlet var usernameText: UITextField!
    @IBOutlet var loginWithFbButton: UIButton!
    @IBOutlet var signInButton: UIButton!
    let locationMgr = CLLocationManager()
    
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

    @IBAction func signinClicked(_ sender: Any) {
        print("Username: " + usernameText.text!)
        print("Password: " + passwordText.text!)
    }
    
    @IBAction func signUpClicked(_ sender: Any) {
        // 1
        let status  = CLLocationManager.authorizationStatus()
        
        // 2
        if status == .notDetermined {
            locationMgr.requestWhenInUseAuthorization()
            return
        }
        
        // 3
        if status == .denied || status == .restricted {
            let alert = UIAlertController(title: "Location Services Disabled", message: "Please enable Location Services in Settings", preferredStyle: .alert)
            
            let okAction = UIAlertAction(title: "OK", style: .default, handler: nil)
            alert.addAction(okAction)
            
            present(alert, animated: true, completion: nil)
            return
        }
    }

}
