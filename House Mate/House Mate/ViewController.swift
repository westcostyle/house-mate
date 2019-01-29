//
//  ViewController.swift
//  House Mate
//
//  Created by Jorge Giannotta on 18/12/2018.
//  Copyright © 2018 Jorge Giannotta. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var resultLabel: UILabel!
    @IBOutlet weak var electricityField: UITextField!
    @IBOutlet weak var internetField: UITextField!
    @IBOutlet weak var waterField: UITextField!
    @IBOutlet weak var netflixField: UITextField!
    @IBOutlet weak var peopleField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    @IBAction func calculateButton(_ sender: Any) {
        if let electricity = Double(electricityField.text!){
            if let internet = Double(internetField.text!){
                if let water = Double(waterField.text!){
                    if let netflix = Double(netflixField.text!){
                        if let people = Double(peopleField.text!){
                            let totalBill = (electricity + internet + water + netflix) / people
                            resultLabel.text = ("The Splitted House Bill for \(Int(people)) people is: \(String(totalBill))")
                        }else{peopleField.text = ""}
                    }else{netflixField.text = ""}
                }else{waterField.text = ""}
            }else{internetField.text = "0"}
        }else{electricityField.text = ""}
        
    }
    @IBAction func clearButton(_ sender: Any) {
        resultLabel.text = ""
        electricityField.text = ""
        internetField.text = ""
        waterField.text = ""
        netflixField.text = ""
        peopleField.text = ""
        
    }
    

}

