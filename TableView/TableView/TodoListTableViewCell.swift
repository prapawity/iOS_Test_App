//
//  TodoListTableViewCell.swift
//  TableView
//
//  Created by Prapawit Patthasirivichot on 20/4/2562 BE.
//  Copyright © 2562 Prapawit Patthasirivichot. All rights reserved.
//

import UIKit

class TodoListTableViewCell: UITableViewCell {

    @IBOutlet weak var todoNameLabel2: UILabel!
    
    @IBOutlet weak var todoNameLabel: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

    func loadData(names: String){
        todoNameLabel.text = names
    }
    func loadData2(names: String){
    print("jkdbngkjfnjngjkfgn     \(names)          kjlsgnmfklkgl;sdkg;kg;df")
        todoNameLabel2.text = names
    }
}
