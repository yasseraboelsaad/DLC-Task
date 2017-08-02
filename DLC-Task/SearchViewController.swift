//
//  SearchViewController.swift
//  DLC-Task
//
//  Created by Yasser Abouel-Saad on 1/8/17.
//  Copyright © 2017 Yasser Abouel-Saad. All rights reserved.
//

import UIKit

class SearchViewController: UIViewController {

    
    @IBOutlet var segmentedControl: TwicketSegmentedControl!
    @IBOutlet var firstClassButton: UIButton!
    @IBOutlet var bussinessButton: UIButton!
    @IBOutlet var economyButton: UIButton!
    @IBOutlet var searchButton: UIButton!
    
    var isFirstClass: Bool = false
    var isBussiness: Bool = false
    var isEconomy: Bool = true
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        let titles = ["Roundtrip", "One Way"]
        
        segmentedControl.setSegmentItems(titles)
        segmentedControl.sliderBackgroundColor = UIColor(red: 26/255, green: 163/255, blue: 216/255, alpha: 1)
        segmentedControl.segmentsBackgroundColor = UIColor.white
        segmentedControl.defaultTextColor = UIColor(red: 26/255, green: 163/255, blue: 216/255, alpha: 1)
        segmentedControl.highlightTextColor = UIColor.white
        segmentedControl.backgroundColor = UIColor.clear
        
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
        
        updateButtonsState()

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func backButton(_ sender: Any) {
        super.dismiss(animated: true, completion: {})
    }

    @IBAction func firstClassButtonClicked(_ sender: Any) {
        isFirstClass = true
        isBussiness = false
        isEconomy = false
        updateButtonsState()
    }
    
    @IBAction func businessButtonClicked(_ sender: Any) {
        isFirstClass = false
        isBussiness = true
        isEconomy = false
        updateButtonsState()
    }
    
    @IBAction func economyButtonClicked(_ sender: Any) {
        isFirstClass = false
        isBussiness = false
        isEconomy = true
        updateButtonsState()
    }
    
    func updateButtonsState() {
        if isFirstClass {
            firstClassButton.layer.backgroundColor = UIColor(red: 26/255, green: 163/255, blue: 216/255, alpha: 1).cgColor
            firstClassButton.titleLabel?.textColor = UIColor.white
        } else{
            firstClassButton.layer.backgroundColor = UIColor.clear.cgColor
            firstClassButton.titleLabel?.textColor = UIColor(red: 26/255, green: 163/255, blue: 216/255, alpha: 1)
        }
        
        if isBussiness {
            bussinessButton.layer.backgroundColor = UIColor(red: 26/255, green: 163/255, blue: 216/255, alpha: 1).cgColor
            bussinessButton.titleLabel?.textColor = UIColor.white
        } else{
            bussinessButton.layer.backgroundColor = UIColor.clear.cgColor
            bussinessButton.titleLabel?.textColor = UIColor(red: 26/255, green: 163/255, blue: 216/255, alpha: 1)
        }
        
        if isEconomy {
            economyButton.layer.backgroundColor = UIColor(red: 26/255, green: 163/255, blue: 216/255, alpha: 1).cgColor
            economyButton.titleLabel?.textColor = UIColor.white
        } else{
            economyButton.layer.backgroundColor = UIColor.clear.cgColor
            economyButton.titleLabel?.textColor = UIColor(red: 26/255, green: 163/255, blue: 216/255, alpha: 1)
        }

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

extension SearchViewController: TwicketSegmentedControlDelegate {
    func didSelect(_ segmentIndex: Int) {
        print("Selected index: \(segmentIndex)")
    }
}
