//
//  Purchase.swift
//  easy store
//
//  Created by Prapawit Patthasirivichot on 9/4/2562 BE.
//  Copyright © 2562 Prapawit Patthasirivichot. All rights reserved.
//

import UIKit

class Purchase: UIViewController {
    var reciever : Product?

    @IBOutlet weak var pic: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        title = reciever?.name
        pic.image = UIImage(named: (reciever?.img)!)
    }
    

}
