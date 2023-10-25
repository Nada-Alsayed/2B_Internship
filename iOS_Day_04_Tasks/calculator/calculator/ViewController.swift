//
//  ViewController.swift
//  calculator
//
//  Created by MAC on 25/10/2023.
//

import UIKit

class ViewController: UIViewController {
    
    //MARK: - IBOutlets
    @IBOutlet weak var label: UILabel!
    
    //MARK: - Variables
    var number1 : Double = 0
    var myOperator: String = "+"
    var newOperation: Bool = true
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //clearVars()
    }
    
    //MARK: - IBActions
    
    @IBAction func operatorsTapped(_ sender: UIButton) {
        if let newOperator = sender.titleLabel?.text {
            myOperator = newOperator
            guard let text = label.text else { return }
            number1 = Double(text) ?? 0
            newOperation = true
        }
    }
    
    
    @IBAction func numberTapped(_ sender: UIButton) {
        if let digit = sender.titleLabel?.text {
            addNumberToInput(num: digit)
        }
    }
    
    @IBAction func clear(_ sender: Any) {
        clearVars()
    }
    
    @IBAction func equals(_ sender: Any) {
        performCalculation()
    }
    
    @IBAction func btnPercent(_ sender: Any) {
        var numString = Double(label.text ?? "0.0")
        numString = numString!/100.0
        label.text = "\(numString!)"
        newOperation = true
    }
    
    @IBAction func btnMinus(_ sender: Any) {
        var numString = label.text ?? ""
        numString = "-" + numString
        label.text = numString
    }
    
    
    //MARK: - Methods

    func performCalculation(){
        let number2 = Double(label.text ?? "0.0")
        var total : Double!
        switch myOperator {
        case "+":
            total = number1 + (number2 ?? 0)
        case "-":
            total = number1 - (number2 ?? 0)
        case "x":
            total = number1 * (number2 ?? 0)

        case "/":
            total = number1 / (number2 ?? 0)
        default:
            total = 0.0
        }
        label.text = "\(total ?? 0.0)"
        newOperation = true
    }
    
    func clearVars(){
        label.text = "0"
        newOperation = true
    }
    
    func addNumberToInput(num:String){
        var numString = label.text ?? ""
        if newOperation {
            numString = ""
            newOperation = false
        }
        numString += num
        label.text = numString
    }
}

