//
//  model.swift
//  easy store
//
//  Created by Prapawit Patthasirivichot on 9/4/2562 BE.
//  Copyright © 2562 Prapawit Patthasirivichot. All rights reserved.
//

import Foundation
class Product {
    var name:String;
    var price:Double;
    var img:String?
    init(name:String,price:Double) {
        self.name = name
        self.price = price
    }
}
