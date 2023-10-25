//
//  ViewController.swift
//  classes_Task
//
//  Created by MAC on 25/10/2023.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var salaryTF: UITextField!
    @IBOutlet weak var labelSalary: UILabel!
    
    //MARK: - variables

    var person: Person?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        labelSalary.text = ""
    }

    //MARK: - IBActions

    
    @IBAction func calcEmployeeSalary(_ sender: Any) {
        let salaryString = salaryTF.text ?? "0"
        if let salary = Int(salaryString) {
            person = Employee()
            let salaryNumeric = person?.getSalary(salary: salary) ?? 0.0
            labelSalary.text = "\(salaryNumeric)"
        }
    }
    
    @IBAction func calcManagerSalary(_ sender: Any) {
        let salaryString = salaryTF.text ?? "0"
        if let salary = Int(salaryString) {
            person = Manager()
            let salaryNumeric = person?.getSalary(salary: salary) ?? 0.0
            labelSalary.text = "\(salaryNumeric)"
        }
    }
    
}

//MARK: - protocols

protocol Person{
    func getSalary(salary:Int)->Float
}

//MARK: - classes

class Employee:Person{
    func getSalary(salary: Int)->Float {
        return Float(salary) * 1.5
    }
}

class Manager:Person{
    func getSalary(salary: Int)->Float {
        return Float(salary) * 2.5
    }
}
