//
//  CellTable.swift
//  game
//
//  Created by Student on 22/5/2561 BE.
//  Copyright © 2561 Student. All rights reserved.
//

import UIKit

class CellTable: UITableViewCell {

    @IBOutlet weak var titleLable: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
    }

    func configCell(title:Int){
        titleLable.text = "\(title)"
    }
}
