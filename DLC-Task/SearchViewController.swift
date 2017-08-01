//
//  SearchViewController.swift
//  DLC-Task
//
//  Created by Yasser Abouel-Saad on 1/8/17.
//  Copyright © 2017 Yasser Abouel-Saad. All rights reserved.
//

import UIKit

class SearchViewController: UIViewController {

    @IBOutlet var firstClassButton: UIButton!
    @IBOutlet var bussinessButton: UIButton!
    @IBOutlet var economyButton: UIButton!
    @IBOutlet var searchButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        searchButton.layer.cornerRadius = 20
        searchButton.layer.borderWidth = 1
        searchButton.layer.borderColor = UIColor.clear.cgColor
        
        firstClassButton.layer.cornerRadius = 15
        firstClassButton.layer.borderWidth = 1
        firstClassButton.layer.borderColor = UIColor(red: 26/255, green: 163/255, blue: 216/255, alpha: 1).cgColor
        
        bussinessButton.layer.cornerRadius = 15
        bussinessButton.layer.borderWidth = 1
        bussinessButton.layer.borderColor = UIColor(red: 26/255, green: 163/255, blue: 216/255, alpha: 1).cgColor
        
        economyButton.layer.cornerRadius = 15
        economyButton.layer.borderWidth = 1
        economyButton.layer.borderColor = UIColor(red: 26/255, green: 163/255, blue: 216/255, alpha: 1).cgColor

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func backButton(_ sender: Any) {
        super.dismiss(animated: true, completion: {})
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
