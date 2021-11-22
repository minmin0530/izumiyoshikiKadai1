//
//  ViewController.swift
//  izumiyoshikiKadai1
//
//  Created by 泉芳樹 on 2021/11/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var calcResultLabel: UILabel!
    @IBOutlet weak var textFieldsStackView: UIStackView!
    private let calc: Calc = Calc()
    override func viewDidLoad() {
        super.viewDidLoad()
    }


    @IBAction func buttonTapped(_ sender: Any) {
        calc.initializeResult()
        for subView in textFieldsStackView.subviews {
            let textField = subView as! UITextField
            guard let text = textField.text else {
                continue
            }
            guard let number = Int(text) else {
                continue
            }
            calc.add(number: number)
        }
        calcResultLabel.text = calc.getResult().description
    }
}

