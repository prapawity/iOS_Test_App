//
//  playgames.swift
//  ITCAMP_Training
//
//  Created by Prapawit Patthasirivichot on 26/3/2562 BE.
//  Copyright © 2562 Prapawit Patthasirivichot. All rights reserved.
//

import UIKit

class playgames: UIViewController {
    
    let list_img = [#imageLiteral(resourceName: "eraser"),#imageLiteral(resourceName: "pen"),#imageLiteral(resourceName: "ruler")]
    let name_img = ["eraser","pen","ruler"]
    var life = 3,status_index = 0;
    @IBOutlet weak var lifepoint: UILabel!
    @IBOutlet weak var history: UILabel!
    
    @IBOutlet weak var submit_button: UIButton!
    @IBOutlet weak var restart_button: UIButton!
    @IBOutlet weak var textfield: UITextField!
    @IBOutlet weak var img: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        textfield.isUserInteractionEnabled = true
        submit_button.isHidden = false
        life = 3
        status_index = 0;
        init_state()
        lifepoint.text = String(repeating: "❤️", count: life)
        history.text = ""
        restart_button.isHidden = true
    }
    @IBAction func submit_btn(_ sender: Any) {
        let get_ans = textfield.text?.lowercased()
        textfield.text = ""
        if(get_ans == name_img[status_index]){
            history.text = history.text!+"\(get_ans!) Correct!\n"
            status_index += 1
            if(status_index >= 3){
                textfield.placeholder = ""
                submit_button.isHidden = true
                restart_button.isHidden = false
                textfield.isUserInteractionEnabled = false
                history.text = history.text!+"Congratulation You Win!!!\n"
            }
            else{
                init_state()
            }
        }
        else{
            history.text = history.text!+"\(get_ans!) is Wrong\n"
            life -= 1
            if(life == 0){
                lifepoint.text = " "
                submit_button.isHidden = true
                restart_button.isHidden = false
                textfield.isUserInteractionEnabled = false
                history.text = history.text!+"Try Again You Lose"
            }
            else{
            lifepoint.text = String(repeating: "❤️", count: life)
            }
        }
        
    }
    @IBAction func restart_btn(_ sender: Any) {
        viewDidLoad()
    }
    
    func init_state(){
        img.image = list_img[status_index]
        textfield.placeholder = String(repeating: "_ ", count: name_img[status_index].count)
    }
    
}
