//
//  moodQ4ViewController.swift
//  ThymeApp
//
//  Created by scholar on 8/3/22.
//

import UIKit

class moodQ4ViewController: UIViewController {
    
    var happinessRating = 0;
    var stressRating = 0;
    var worryRating = 0;
    var excitementRating = 0;
    var entry = 0

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func worryRate5(_ sender: Any) {
        worryRating = 5
    }
    
    @IBAction func worryRate4(_ sender: Any) {
        worryRating = 4
    }
    
    @IBAction func worryRate3(_ sender: Any) {
        worryRating = 3
    }
    
    @IBAction func worryRate2(_ sender: Any) {
        worryRating = 2
    }
    
    
    @IBAction func worryRate1(_ sender: Any) {
        worryRating = 1
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let destinationVC = segue.destination as! moodRecordsViewController
        
        destinationVC.happinessRating = happinessRating
        destinationVC.stressRating = stressRating
        destinationVC.worryRating = worryRating
        destinationVC.excitementRating = excitementRating
        destinationVC.entry = entry
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
