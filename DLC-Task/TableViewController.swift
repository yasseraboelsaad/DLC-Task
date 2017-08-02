//
//  TableViewController.swift
//  DLC-Task
//
//  Created by Yasser Abouel-Saad on 2/8/17.
//  Copyright © 2017 Yasser Abouel-Saad. All rights reserved.
//

import UIKit

class TableViewController: UITableViewController {

    @IBOutlet var segmentedControl: TwicketSegmentedControl!
    @IBOutlet var firstClassButton: UIButton!
    @IBOutlet var bussinessButton: UIButton!
    @IBOutlet var economyButton: UIButton!
    @IBOutlet var searchButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem()
        
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
        
        economyButton.setTitleColor(UIColor.white, for: .normal)
        economyButton.layer.backgroundColor = UIColor(red: 26/255, green: 163/255, blue: 216/255, alpha: 1).cgColor
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

   
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        
        //get screen height
        let screenSize = UIScreen.main.bounds
        let screenHeight = screenSize.height
        if indexPath.row == 0 {
            return  screenHeight * 0.42
        }else if indexPath.row == 3 {
            return  screenHeight * 0.34
        }
        return screenHeight * 0.12
    }
    
    @IBAction func tappedButton(_ sender: Any) {
        
        let buttonClicked = sender as! UIButton
        buttonClicked.setTitleColor(UIColor.white, for: .normal)
        buttonClicked.layer.backgroundColor = UIColor(red: 26/255, green: 163/255, blue: 216/255, alpha: 1).cgColor
        
        // we can initalize deh fo2 27san
        let btnArray = [economyButton,firstClassButton,bussinessButton]
        
        for btn in btnArray{
            
            if buttonClicked != btn {
                let color = UIColor(red: 26/255, green: 163/255, blue: 216/255, alpha: 1)
                btn?.setTitleColor(color, for: .normal)
                btn?.layer.backgroundColor = UIColor.clear.cgColor
                
                
            }
            
        }
    }

    @IBAction func backClicked(_ sender: Any) {
        super.dismiss(animated: true, completion: {})
    }
    /*
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifier", for: indexPath)

        // Configure the cell...

        return cell
    }
    */

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
