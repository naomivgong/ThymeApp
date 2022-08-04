//
//  moodRecordsViewController.swift
//  ThymeApp
//
//  Created by scholar on 8/3/22.
//

import UIKit

class moodRecordsViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    
    @IBOutlet weak var tableView: UITableView!
    
    //whether or not a new entry is being input
    var newEntry = true
    var happinessRating = 0;
    var stressRating = 0;
    var worryRating = 0;
    var excitementRating = 0;
    var entry = 0
    
    var netScore = 0
    var average = 0.0
    var sum = 0.0
    
    var entries = [String]()
    var scores = [Int]()
    
    @IBOutlet weak var outputLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.register(UITableViewCell.self,
                               forCellReuseIdentifier: "TableViewCell")
        tableView.dataSource = self
        
        let posScore = happinessRating + excitementRating
        let negScore = worryRating + stressRating
        netScore = posScore - negScore
        
        scores.append(netScore)
        for score in scores{
            sum += Double(score)
            average = sum/Double(scores.count)
        }
        if (average < 0){
            outputLabel.text = "These moods may be concerning. We recommend you seek help from friends, family, or therapy"
        }
        else if (average > 1 && average <= 3 ){
            outputLabel.text = "There are minor concerns with your mood. Keep an optimistic attitude"
        }
        else{
            outputLabel.text = "We are glad you are feeling well"
        }
        entries.append("entry \(entry) score is \(netScore)")
        
        tableView.reloadData()
        
    }
    
    @IBAction func goHome(_ sender: Any) {
        newEntry = false
        happinessRating = 0;
        stressRating = 0;
        worryRating = 0;
        excitementRating = 0;
    }
    
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return entries.count
    }

    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifier", for: indexPath)

        cell.textLabel?.text = self.entries[indexPath.row]
        return cell
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let destinationVC = segue.destination as! moodViewController
        
        destinationVC.happinessRating = happinessRating
        destinationVC.stressRating = stressRating
        destinationVC.worryRating = worryRating
        destinationVC.excitementRating = excitementRating
        destinationVC.entry = entry
        destinationVC.newEntry = newEntry
        destinationVC.scores = scores
        destinationVC.entries = entries
    }
    
}

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

