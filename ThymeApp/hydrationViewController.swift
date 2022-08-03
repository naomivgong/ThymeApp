//
//  hydrationViewController.swift
//  ThymeApp
//
//  Created by scholar on 8/2/22.
//

import UIKit

class hydrationViewController: UIViewController, UITableViewDataSource, UITableViewDelegate{
    

    @IBOutlet weak var tableView: UITableView!
    
    @IBOutlet weak var weight: UITextField!
    
    @IBOutlet weak var time: UITextField!
    
    @IBOutlet weak var display: UILabel!
    //varaibles
    var totalWaterNeed = 0
    var waterEachInterval = 0
    
    let tableViewData : [String] = ["Early Morning", "Late Morning", "Noon", "Afternoon", "Late Afternoon", "Evening", "Late Evening", "Night (before bed)"]
    var amtOfwater = [Int]()
    
    //outlets for table view

    override func viewDidLoad() {
        super.viewDidLoad()
        

        tableView.register(UITableViewCell.self,
                               forCellReuseIdentifier: "TableViewCell")
        tableView.dataSource = self
    }
    
    @IBAction func calculations(_ sender: Any) {
        if let weight = weight.text{
            if let workout =  time.text {
            let weightInt = (weight as NSString).integerValue
            let waterNeeded1 = weightInt * 2/3
            let workout = (workout as NSString).integerValue
            let waterNeeded2 = workout * 12/30
            totalWaterNeed = waterNeeded1 + waterNeeded2
            display.text = "You need \(totalWaterNeed) ounces of water per day"
            waterEachInterval = totalWaterNeed/(tableViewData.count)
            tableView.reloadData()
            }
        }
        else{
            display.text = "Please enter a valid input"
        }
    }
    
    //return number of rows for each section
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        //when data source has new members added to it
        //we can see it in the view table
        return self.tableViewData.count
    }
    
    
    //return cell we want to use for table view
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifier", for: indexPath)
        
        cell.textLabel?.text = "\(self.tableViewData[indexPath.row]) should finish \(waterEachInterval) ounces"
        return cell
        }

    //not usuable
    /*
     // create a cell for each table view row
         func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
             
             // create a new cell if needed or reuse an old one
             let cell:UITableViewCell = self.tableView.dequeueReusableCell(withIdentifier: cellReuseIdentifier) as UITableViewCell!
             
             // set the text from the data model
             cell.textLabel?.text = self.animals[indexPath.row]
             
             return cell
         }
     */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
