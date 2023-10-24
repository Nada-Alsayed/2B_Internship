//
//  ViewController.swift
//  task_01
//
//  Created by MAC on 24/10/2023.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var descreption: UILabel!
    @IBOutlet weak var img: UIImageView!
    
    var index: Int = 0
    override func viewDidLoad() {
        super.viewDidLoad()
        setIU()
    }
    func setIU(){
        img.image = UIImage(named: places[index].image)
        descreption.text = places[index].name
    }
    
    @IBAction func previous(_ sender: Any) {
        if(index == 0){
            index = places.count - 1
            setIU()
        }else{
            index = index - 1
            setIU()
        }
    }
    
    @IBAction func next(_ sender: Any) {
        if(index == places.count - 1){
            index = 0
            setIU()
        }else{
            index = index + 1
            setIU()
        }
    }
}

