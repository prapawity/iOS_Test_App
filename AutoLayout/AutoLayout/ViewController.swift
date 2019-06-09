//
//  ViewController.swift
//  AutoLayout
//
//  Created by Prapawit Patthasirivichot on 9/6/2562 BE.
//  Copyright © 2562 Prapawit Patthasirivichot. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var value_now = 0, value_cal = 0, state_now = 0,floating = false
    @IBOutlet weak var numValue: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        numValue.text = "0.0"
    }

    @IBAction func operations(_ sender: UIButton) {
        switch sender.tag {
        case 0:
            numValue.text = "0"
        case 1:
            numValue.text =  numValue.text != "0" ? "\(NegOrPos(num: Double(numValue.text!)!))" : "0"
        default:
            print()
        }
    }
    @IBAction func touchNum(_ sender: UIButton) {
        calNum(num: sender.tag)
    }
    
    func calNum(num: Int){
        floating = num == -1 ? true : false
        if floating == true && numValue.text?.contains(".") == false{
            numValue.text = "\(numValue.text!)."
        }else if floating == false && num != -1{
            numValue.text = numValue.text == "0.0" ? "\(num)":"\(numValue.text!)\(num)"
        }
    }
    func NegOrPos(num: Double) -> Double{
        return num*(-1)
    }
    
}

