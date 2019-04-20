//
//  ViewController.swift
//  easy store
//
//  Created by Prapawit Patthasirivichot on 9/4/2562 BE.
//  Copyright © 2562 Prapawit Patthasirivichot. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var list_product: [Product] = []
    var index:Int=0
    
    @IBOutlet weak var but2: UIButton!
    @IBOutlet weak var but1: UIButton!
    @IBOutlet weak var but3: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        var iphone = Product(name: "Iphone XS", price: 299)
        iphone.img = "iphone"
        var Macbook = Product(name: "Macbook Pro", price: 399)
        Macbook.img = "mac"
        var AppWatch = Product(name: "Apple Watch", price: 499)
        AppWatch.img = "app"
        list_product.append(iphone)
        list_product.append(Macbook)
        list_product.append(AppWatch)
        
        index = 0
    }    
    @IBAction func btnPress(_ sender: Any) {
        let button = sender as! UIButton
        switch button.tag {
        case 0:
            index = 0
            break
        case 1:
            index = 1
            break
        case 2:
            index = 2
            break
            
        default:
            index = 0
        }
        print(button.tag)
        gotoNextPage()
    }
    func gotoNextPage(){
        performSegue(withIdentifier: "toPurchase", sender: list_product[index])
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toPurchase" {
            if let gameOverVC = segue.destination as?  Purchase{
                var answer = (sender as? Product)!
                gameOverVC.reciever = answer
            }
        }
    }
    
}

