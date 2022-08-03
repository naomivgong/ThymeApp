//
//  moodQ3ViewController.swift
//  ThymeApp
//
//  Created by scholar on 8/3/22.
//

import UIKit

class moodQ3ViewController: UIViewController {
    
    var happinessRating = 0;
    var stressRating = 0;
    var worryRating = 0;
    var excitementRating = 0;
    var entry = 0

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func exciteRate5(_ sender: Any) {
        excitementRating = 5
    }
    
    @IBAction func exciteRate4(_ sender: Any) {
        excitementRating = 4
    }
    
    @IBAction func exciteRate3(_ sender: Any) {
        excitementRating = 3
    }
    
    @IBAction func exciteRate2(_ sender: Any) {
        excitementRating = 2
    }
    
    @IBAction func exciteRate1(_ sender: Any) {
        excitementRating = 1
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let destinationVC = segue.destination as! moodQ4ViewController
        
        destinationVC.happinessRating = happinessRating
        destinationVC.stressRating = stressRating
        destinationVC.worryRating = worryRating
        destinationVC.excitementRating = excitementRating
        destinationVC.entry = entry
    }
    /*    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
