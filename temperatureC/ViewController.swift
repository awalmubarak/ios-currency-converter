//
//  ViewController.swift
//  temperatureC
//
//  Created by Mubarak Awal on 15/02/2019.
//  Copyright © 2019 Mubarak Awal. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var conversionCount: Int = 0;
    @IBOutlet weak var tempField: UITextField!
    @IBOutlet weak var farenLabel: UILabel!
    @IBOutlet weak var conversionsLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    
    @IBAction func convertClicked(_ sender: UIButton) {
        if let tempValue = tempField.text{
            if tempValue != ""{
                if let value = Double(tempValue){
                    let output = value * (9/5) + 32;
                    farenLabel.text = String(output);
                    conversionCount+=1;
                    conversionsLabel.text = String(conversionCount) + " Conversions";
                }
                
            }
        }
    }
    

}

