//
//  ViewController.swift
//  CurrencyConverter
//
//  Created by Saad Platini on 20.09.18.
//  Copyright © 2018 Saad Platini. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var poundLabel: UILabel!
    @IBOutlet weak var yenLabel: UILabel!
    @IBOutlet weak var euroLabel: UILabel!
    @IBOutlet weak var inputTextField: UITextField!
    
    let poundRate = 0.69
    let yenRate = 113.94
    let euroRate = 0.89
    var dollarAmount = 0.0
    
    @IBAction func convertCurrency(_ sender: UIButton) {
        if let amount = Double(inputTextField.text!){
            dollarAmount = amount
        }
        poundLabel.text = "\(((dollarAmount * poundRate)*100).rounded()/100)"
        yenLabel.text = "\(((dollarAmount * yenRate)*100).rounded()/100)"
        euroLabel.text = "\(((dollarAmount * euroRate)*100).rounded()/100)"
        dollarAmount = 0.0
        
    }
    
    @IBAction func clearText(_ sender: UIButton) {
        
        inputTextField.text = ""
        poundLabel.text = "0.0"
        yenLabel.text = "0.0"
        euroLabel.text = "0.0"
        
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        inputTextField.delegate = self
        // Do any additional setup after loading the view, typically from a nib.
    }

    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        view.endEditing(true)
    }
    
}

