//
//  moodQ1ViewController.swift
//  ThymeApp
//
//  Created by scholar on 8/3/22.
//

import UIKit

class moodQ1ViewController: UIViewController {

    var happinessRating = 0;
    var stressRating = 0;
    var worryRating = 0;
    var excitementRating = 0;
    var entry = 0;
    var newEntry = true;
    var entries = [String]()
    var scores = [Int]()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func elated(_ sender: Any) {
        happinessRating = 5
    }
    
    
    @IBAction func prettygood(_ sender: Any) {
        happinessRating = 4
    }
    
    
    @IBAction func neutral(_ sender: Any) {
        happinessRating = 3
    }
    
    @IBAction func notGreatest(_ sender: Any) {
        happinessRating = 2
    }
    
    
    @IBAction func worst(_ sender: Any) {
        happinessRating = 1
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let destinationVC = segue.destination as! moodQ2ViewController
        
        destinationVC.happinessRating = happinessRating
        destinationVC.stressRating = stressRating
        destinationVC.worryRating = worryRating
        destinationVC.excitementRating = excitementRating
        destinationVC.entry = entry
        destinationVC.newEntry = newEntry
        destinationVC.scores = scores
        destinationVC.entries = entries
    
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
