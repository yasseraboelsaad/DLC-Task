//
//  TableViewController.swift
//  DLC-Task
//
//  Created by Yasser Abouel-Saad on 2/8/17.
//  Copyright © 2017 Yasser Abouel-Saad. All rights reserved.
//

import UIKit

class SearchTableViewController: UITableViewController {

    @IBOutlet var segmentedControl: TwicketSegmentedControl!
    @IBOutlet var firstClassButton: UIButton!
    @IBOutlet var bussinessButton: UIButton!
    @IBOutlet var economyButton: UIButton!
    @IBOutlet var searchButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        initSegmentedControl()
        
        makeButtonsRound()
        
        //selects the economy button by default
        economyButton.setTitleColor(UIColor.white, for: .normal)
        economyButton.layer.backgroundColor = UIColor(red: 26/255, green: 163/255, blue: 216/255, alpha: 1).cgColor
        
    }
    
    //creates the custom segmented control from the TwicketSegmentedControl library
    func initSegmentedControl(){
        let titles = ["Roundtrip", "One Way"]
        
        segmentedControl.setSegmentItems(titles)
        segmentedControl.sliderBackgroundColor = UIColor(red: 26/255, green: 163/255, blue: 216/255, alpha: 1)
        segmentedControl.segmentsBackgroundColor = UIColor.white
        segmentedControl.defaultTextColor = UIColor(red: 26/255, green: 163/255, blue: 216/255, alpha: 1)
        segmentedControl.highlightTextColor = UIColor.white
        segmentedControl.backgroundColor = UIColor.clear
    }
    
    //makes the buttons in this view round
    func makeButtonsRound(){
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
    
    //Modify the static cells size as a percentage of the screen
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        
        //get screen height
        let screenSize = UIScreen.main.bounds
        let screenHeight = screenSize.height
        //edit cell size
        if indexPath.row == 0 {
            return  screenHeight * 0.42
        }else if indexPath.row == 3 {
            return  screenHeight * 0.34
        }
        return screenHeight * 0.12
    }
    
    //changes the color of the clicked button to give it the highligh effect and unclicks the other 2 buttons as only one option should be available to the user
    @IBAction func tappedButton(_ sender: Any) {
        
        let buttonClicked = sender as! UIButton
        buttonClicked.setTitleColor(UIColor.white, for: .normal)
        buttonClicked.layer.backgroundColor = UIColor(red: 26/255, green: 163/255, blue: 216/255, alpha: 1).cgColor
        
        let btnArray = [economyButton,firstClassButton,bussinessButton]
        
        for btn in btnArray{
            
            if buttonClicked != btn {
                let color = UIColor(red: 26/255, green: 163/255, blue: 216/255, alpha: 1)
                btn?.setTitleColor(color, for: .normal)
                btn?.layer.backgroundColor = UIColor.clear.cgColor
                
                
            }
            
        }
    }
    
    //Back button dismisses current view to go back to login view
    @IBAction func backClicked(_ sender: Any) {
        super.dismiss(animated: true, completion: {})
    }
}
