//
//  ViewController.swift
//  Calculator
//
//  Created by Gianfranco Cotumaccio on 23/06/16.
//  Copyright © 2016 Propaganda Studio. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    // Outlets
    @IBOutlet weak var textFieldNumbers: UITextField!
    
    // Variables
    var number1 = 0
    var number2 = 0
    var operationType = ""
    
    @IBAction func numberPressed(sender: UIButton) {
        textFieldNumbers.text = sender.currentTitle
    }
    
    @IBAction func operation(sender: UIButton) {
        operationType = sender.currentTitle!
        number1 = Int(textFieldNumbers.text!)!
    }
    
    @IBAction func equalOperation(sender: UIButton) {
        
        number2 = Int(textFieldNumbers.text!)!
        
        var result = 0
        
        if operationType == "+" {
            result = number1 + number2
            // print("Equal: \(number1) \(number2)")
        } else if operationType == "-" {
            result = number1 - number2
        } else if operationType == "x" {
            result = number1 * number2
        }
        
        textFieldNumbers.text = result.description
    }
    
    @IBAction func resetValues(sender: UIButton) {
        number1 = 0
        number2 = 0
        operationType = ""
        textFieldNumbers.text = "0"
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

