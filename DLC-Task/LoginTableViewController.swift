//
//  LoginTableViewController.swift
//  DLC-Task
//
//  Created by Yasser Abouel-Saad on 2/8/17.
//  Copyright © 2017 Yasser Abouel-Saad. All rights reserved.
//

import UIKit
import CoreLocation

class LoginTableViewController: UITableViewController {

    @IBOutlet var loginWithFbButton: UIButton!
    @IBOutlet var signInButton: UIButton!
    @IBOutlet var passwordText: UITextField!
    @IBOutlet var usernameText: UITextField!
    let locationMgr = CLLocationManager()

    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        makeButtonsRound()
        
        //hides the keyboard when user taps anywhere on the screen
        self.hideKeyboardWhenTappedAround()
        
        //make tableview not scrollable
        tableView.isScrollEnabled = false
    }

    //makes the buttons in this view round
    func makeButtonsRound(){
        signInButton.layer.cornerRadius = 20
        signInButton.layer.borderWidth = 1
        signInButton.layer.borderColor = UIColor.clear.cgColor
        
        loginWithFbButton.layer.cornerRadius = 20
        loginWithFbButton.layer.borderWidth = 1
        loginWithFbButton.layer.borderColor = UIColor.clear.cgColor
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    //Modifies the size of each static cell
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        
        //get screen height
        let screenSize = UIScreen.main.bounds
        let screenHeight = screenSize.height
        //edit cell size
        if indexPath.row == 0 {
            return  screenHeight * 0.84
        }else {
            return  screenHeight * 0.17
        }
    }
    
    //makes the status bar color white so its visible with the black background
    override var preferredStatusBarStyle: UIStatusBarStyle {
        return .lightContent
    }
    
    //prints content of textfields when user clicks sign In
    @IBAction func signInClicked(_ sender: Any) {
        print("Username: " + usernameText.text!)
        print("Password: " + passwordText.text!)
    }
    
    //Requests access to user location services when sig up button is clicked
    @IBAction func signUpClicked(_ sender: Any) {
        let status  = CLLocationManager.authorizationStatus()
        
        if status == .notDetermined {
            locationMgr.requestWhenInUseAuthorization()
            return
        }
        
        if status == .denied || status == .restricted {
            let alert = UIAlertController(title: "Location Services Disabled", message: "Please enable Location Services in Settings", preferredStyle: .alert)
            
            let okAction = UIAlertAction(title: "OK", style: .default, handler: nil)
            alert.addAction(okAction)
            
            present(alert, animated: true, completion: nil)
            return
        }
    }
}

//Extension that has the hidekeyboardWhenTapped function so it can be called in all views if needed
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

