//
//  sleepViewController.swift
//  ThymeApp
//
//  Created by scholar on 8/4/22.
//

import UIKit

class sleepViewController: UIViewController {

    
    @IBOutlet weak var sleepLengthfield: UITextField!
    
    @IBOutlet weak var age: UITextField!
    
    @IBOutlet weak var sleepDebt: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
    }
    
    @IBAction func calculateSleep(_ sender: Any) {
        var length = sleepLengthfield.text
        var intLength = (length as! NSString).integerValue
        if let age = age.text{
           var intAge = (age as NSString).integerValue
            if (intAge >= 6 && intAge <= 12){
                if (intLength < 9){
                    sleepDebt.text = "Not enough sleep! Kids ages 5 to 12 need 9 to 12 hours of sleep."
                }
                else{
                    sleepDebt.text = "Good job! You are getting enough sleep."
                }
            }
            if (intAge >= 13 && intAge <= 18){
                if (intLength < 8){
                    sleepDebt.text = "Not enough sleep! Kids ages 13 to 18 need 8 to 10 hours of sleep."
                }
                else{
                    sleepDebt.text = "Good job! You are getting enough sleep."
                }
            }
            if (intAge >= 18){
                if (intLength < 7){
                    sleepDebt.text = "Not enough sleep! Adults need 7 or more hours of sleep!"
                }
                else{
                    sleepDebt.text = "Good job! You are getting enough sleep."
                }
            }
                
        }
        else{
            sleepDebt.text = "Enter a valid age or sleeping length"
        }
        
    }
  

    /*    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
