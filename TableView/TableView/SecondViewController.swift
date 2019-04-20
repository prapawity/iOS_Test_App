//
//  SecondViewController.swift
//  TableView
//
//  Created by Prapawit Patthasirivichot on 20/4/2562 BE.
//  Copyright © 2562 Prapawit Patthasirivichot. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {
    var listData = [TodolistData]()
    @IBOutlet weak var textLabel: UILabel!
    var titles = ""
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationItem.title = titles
    }
    func actionAdd(sender: UIBarButtonItem)
    {
        print("actionAdd")
    }

}
extension SecondViewController: UITableViewDelegate,UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        listData
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        <#code#>
    }
    
    
}
