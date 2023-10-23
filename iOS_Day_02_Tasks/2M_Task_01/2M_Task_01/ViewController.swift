//
//  ViewController.swift
//  2M_Task_01
//
//  Created by MAC on 23/10/2023.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var TFHeartRate: UITextField!
    
    @IBOutlet weak var resault: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        resault.text = ""
    }

    @IBAction func calcHeartRateBtn(_ sender: Any) {
        guard let heartRateString = TFHeartRate.text else {return}
        guard let heartRate = Int(heartRateString) else {return}
        TFHeartRate.text = ""
        switch heartRate {
        case 100...120 :
            resault.text = "you are in the very light zone. acivity in this zone helps with recovery."
        case 121...140 :
            resault.text = "you are in the light zone. acivity in this zone helps improve basic."
        case 141...160 :
            resault.text = "you are in the Moderate zone. acivity in this zone helps improve aerobic."
        case 161...180 :
            resault.text = "you are in the Hard zone. acivity in this zone helps improve basic."
        case 181...200 :
            resault.text = "you are in the Maximum zone. acivity in this zone helps improve basic."
        case 201...Int.max :
            resault.text = "You are in danger, STOP Activity NOW"
            resault.textColor = .red
        default:
            resault.text = "Not Valid input"
        }
    }
    
}

