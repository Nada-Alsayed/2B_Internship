//
//  TemperatureVC.swift
//  2M_Task_01
//
//  Created by MAC on 23/10/2023.
//

import UIKit

class TemperatureVC:UIViewController {

    @IBOutlet weak var labelTemp: UILabel!
    @IBOutlet weak var TFTemperature: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        labelTemp.text = ""
        // Do any additional setup after loading the view.
    }
    

    @IBAction func convertToKelvin(_ sender: Any) {
        guard let tempInCelString = TFTemperature.text else { return }
        guard let intTemp = Int(tempInCelString) else {return}
        let tempKelvin = Float(intTemp) + 273.1518
        labelTemp.text = "\(tempKelvin)"
    }
    
    @IBAction func convertToFehrinheit(_ sender: Any) {
        
        guard let tempInCelString = TFTemperature.text else { return }
        guard let intTemp = Int(tempInCelString) else {return}
        let tempFehrinheit :Float = (Float(intTemp) * (9/5)) + 32
        print("\(tempFehrinheit)")
        labelTemp.text = "\(tempFehrinheit)"
    }
}
