//
//  CollectionViewCell.swift
//  pokedek
//
//  Created by Prapawit Patthasirivichot on 27/4/2562 BE.
//  Copyright © 2562 Prapawit Patthasirivichot. All rights reserved.
//

import UIKit
import Kingfisher
class CollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var img: UIImageView!
    
    @IBOutlet weak var name: UILabel!
    func setImg(url:String,name:String){
        var fullrul =  URL(string: url)
        self.img.kf.setImage(with:fullrul)
        self.name.text = name
    }
    
}
