//
//  Gameover.swift
//  game
//
//  Created by Student on 21/5/2561 BE.
//  Copyright © 2561 Student. All rights reserved.
//

import UIKit

class Gameover: UIViewController {
    
    var answer:Int?,states:Int?
    
    @IBOutlet weak var showBox: UITextField!
    
    @IBOutlet weak var showstate: UILabel!
    
    
    @IBOutlet weak var texts: UILabel!
    @IBAction func restart(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        if states == 0{
            showstate.text = "Lose!!"
            showBox.text = ("\(answer!)")
        }
        if states == 1{
            showstate.text = "Win!!"
            texts.isHidden = true
            showBox.isHidden = true
        }
    }
    
}
