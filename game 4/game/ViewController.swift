//
//  ViewController.swift
//  game
//
//  Created by Student on 21/5/2561 BE.
//  Copyright © 2561 Student. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    var list = [Int]()
    @IBOutlet weak var tableView: UITableView!
    var random_number:Int?
    var heartFail:Int = 6,state:Int = 0
    @IBOutlet weak var inputbox: UITextField!
    @IBOutlet weak var heart1: UIImageView!
    @IBOutlet weak var heart2: UIImageView!
    @IBOutlet weak var heart3: UIImageView!
    @IBOutlet weak var heart4: UIImageView!
    @IBOutlet weak var heart5: UIImageView!
    @IBOutlet weak var status: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        random_number = Int(arc4random_uniform(100))
        
        tableView.delegate = self
        tableView.dataSource = self
    }

    @IBAction func click(_ sender: Any) {
        let input = Int(inputbox.text!)
        list.append(input!)
        print(list)
        tableView.reloadData()
        if input != random_number{
            heartFail = heartFail - 1;
            if heartFail == 5{
                heart3.isHidden = true
            }
            if heartFail == 4{
                heart5.isHidden = true
            }
            if heartFail == 3{
                heart2.isHidden = true
            }
            if heartFail == 2{
                heart4.isHidden = true
            }
            if heartFail == 1{
                heart1.isHidden = true
                performSegue(withIdentifier: "gameover", sender: random_number)
            }
            if input! > random_number!{
                status.text = "Lower!!"
            }
            if input! < random_number!{
                status.text = "Upper!!"
            }
        }
        if input == random_number{
            performSegue(withIdentifier: "gameover", sender: nil)
            state = 1
        }
        inputbox.text = ""
    }
    override func viewDidDisappear(_ animated: Bool) {
        status.text = "status"
        inputbox.text = ""
        heartFail = 0
        heart1.isHidden = false
        heart2.isHidden = false
        heart3.isHidden = false
        heart4.isHidden = false
        heart5.isHidden = false
        random_number = Int(arc4random_uniform(100))
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "gameover" {
            if let gameOverVC = segue.destination as? Gameover {
                gameOverVC.answer = (sender as? Int)!
                gameOverVC.states = state
            }
        }
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return list.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        if let cell = tableView.dequeueReusableCell(withIdentifier: "CellTable") as? CellTable {
            cell.configCell(title: list[indexPath.row])
            return cell
        }
        return UITableViewCell()
    }
}

