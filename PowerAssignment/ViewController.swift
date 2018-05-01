//
//  ViewController.swift
//  PowerAssignment
//
//  Created by Salwa on 3/29/18.
//  Copyright © 2018 Developers2Be. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var baseNumberTextField: UITextField!
    
    
    @IBOutlet weak var powerNumberTextField: UITextField!
    
    
    @IBOutlet weak var resultLabel: UILabel!
    
  
    @IBOutlet weak var alertLabel: UILabel!
    
    
    @IBAction func calculatePowerButton(_ sender: Any) {
        
          getPowerWithRecursion()    // with recursion *****
        
     //   getPowerWithLoop()        // with loop *****
    
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    
func validateTextFields(){
    
    if (baseNumberTextField.text?.isEmpty)!{
    
    alertLabel.text = "Enter Base number "
    resultLabel.text = ""
    
    }else if (powerNumberTextField.text?.isEmpty)!{
    
    alertLabel.text = "Enter Power number "
    resultLabel.text = ""
    
    }else if (baseNumberTextField.text?.isEmpty)! && (powerNumberTextField.text?.isEmpty)!{
    
    alertLabel.text = "Enter Base and Power number "
    resultLabel.text = ""
    
    } else
    
    {
    
    alertLabel.text = ""
    
    }
    
}

    
    func getPowerWithRecursion() {
    
         validateTextFields()
        
        let baseNumber  = Double (baseNumberTextField.text!)!
        let powerNumber  = Double (powerNumberTextField.text!)!
        let power  =  (pow(baseNumber, powerNumber))
        
        resultLabel.text = String (power)
        alertLabel.text = "power is - number "
        
        if (powerNumber >= 0 )
        {
             alertLabel.text = ""
            resultLabel.text = String (power)
           
       }
    
    }
    
    
    func getPowerWithLoop(){
        
        validateTextFields()
     
        let baseNumber  = Double (baseNumberTextField.text!)!
        let powerNumber  = Double (powerNumberTextField.text!)!
        let power  =  (pow(baseNumber, powerNumber))
        
        let p = powerNumber
        
        
        while (p >= 0.0 )
            
        {
            resultLabel.text = String (power)
            
        }
     
        alertLabel.text = "power is - number"
        resultLabel.text = String (power)
    }
 
}

