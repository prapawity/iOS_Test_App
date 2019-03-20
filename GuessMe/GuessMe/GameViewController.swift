//
//  GameViewController.swift
//  GuessMe
//
//  Created by Patcharapon Joksamut on 9/3/2562 BE.
//  Copyright © 2562 Patcharapon Joksamut. All rights reserved.
//

import UIKit

class GameViewController: UIViewController {
    
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var answerTextField: UITextField!
    @IBOutlet weak var heartLabel: UILabel!
    
    let imageArray = [#imageLiteral(resourceName: "1024px-Microsoft_logo.svg"), #imageLiteral(resourceName: "23656"), #imageLiteral(resourceName: "1200px-Google_2015_logo.svg")]
    let answer = ["microsoft", "apple", "google"]
    
    var index = 0
    var lives = 5
    
    override func viewDidLoad() {
        super.viewDidLoad()

        imageView.image = imageArray[0]
    }
    
    @IBAction func didTapSubmit(_ sender: Any) {
        
        if answer[index] == answerTextField.text!.lowercased() {
            advance()
        } else {

            lives -= 1
            
            if lives > 0 {
                heartLabel.text = String(repeating: "❤️", count: lives)
                let alert = UIAlertController(title: "Incorrect", message: "\(answerTextField.text!) is incorrect!", preferredStyle: .alert)
                alert.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
                present(alert, animated: true, completion: nil)
                
            } else {
                let alert = UIAlertController(title: "You Lose", message: "Try Again Later!", preferredStyle: .alert)
                alert.addAction(UIAlertAction(title: "OK", style: .default){ _ in
                    self.dismiss(animated: true, completion: nil)
                })
                present(alert, animated: true, completion: nil)
            }
        }
        
        answerTextField.text = ""
        
    }
    
    func advance() {
        index += 1
        
        if index >= imageArray.count {
            
            let alert = UIAlertController(title: "You Win", message: "You Win Naja", preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "OK", style: .default, handler: { (action) in
                self.dismiss(animated: true, completion: nil)
            }))
            present(alert, animated: true, completion: nil)
            
        } else {
            
            imageView.image = imageArray[index]
            
        }
    }
    
}
