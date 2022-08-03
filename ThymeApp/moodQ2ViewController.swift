//
//  moodQ2ViewController.swift
//  ThymeApp
//
//  Created by scholar on 8/3/22.
//

import UIKit

class moodQ2ViewController: UIViewController {
    
    var happinessRating = 0;
    var stressRating = 0;
    var worryRating = 0;
    var excitementRating = 0;
    var entry = 0;

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func stressRate5(_ sender: Any) {
        stressRating = 5
    }
    
    @IBAction func stressRate4(_ sender: Any) {
        stressRating = 4
    }
    
    @IBAction func stressRate3(_ sender: Any) {
        stressRating = 3
    }
    
    
    @IBAction func stressRate2(_ sender: Any) {
        stressRating = 2
    }
    
    @IBAction func rate1Stress(_ sender: Any) {
        stressRating = 1
    }
    

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let destinationVC = segue.destination as! moodQ3ViewController
        
        destinationVC.happinessRating = happinessRating
        destinationVC.stressRating = stressRating
        destinationVC.worryRating = worryRating
        destinationVC.excitementRating = excitementRating
        destinationVC.entry = entry
    
    }
    
    

    /*    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
