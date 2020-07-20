//
//  ViewController.swift
//  Project3
//
//  Created by Kei on 2020/07/20.
//  Copyright © 2020 Kei. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var textField1: UITextField!
    @IBOutlet weak var textField2: UITextField!
    @IBOutlet weak var switch1: UISwitch!
    @IBOutlet weak var switch2: UISwitch!
    @IBOutlet weak var label1: UILabel!
    @IBOutlet weak var label2: UILabel!
    @IBOutlet weak var answerLabel: UILabel!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func answerButton(_ sender: UIButton) {
        let num1 = Int(textField1.text!) ?? 0
        let num2 = Int(textField2.text!) ?? 0
        var number1 = 0
        var number2 = 0
        
        if switch1.isOn{
            number1 = -num1
        }else{
             number1 = num1
        }
    
        if switch2.isOn{
            number2 = -num2
        }else{
             number2 = num2
        }
    
        let result = number1 + number2
        label1.text = "\(number1)"
        label2.text = "\(number2)"
        answerLabel.text = "\(result)"
}

}
