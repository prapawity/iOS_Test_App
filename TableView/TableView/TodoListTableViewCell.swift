//
//  TodoListTableViewCell.swift
//  TableView
//
//  Created by Prapawit Patthasirivichot on 20/4/2562 BE.
//  Copyright © 2562 Prapawit Patthasirivichot. All rights reserved.
//

import UIKit

class TodoListTableViewCell: UITableViewCell {

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
        self.todoNameLabel.text = names
    }
}
