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
    @IBOutlet weak var tableview: UITableView!
    var titles = ""
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationItem.title = titles
        self.tableview.delegate = self
        self.tableview.dataSource = self
    }
    @IBAction func addData(_ sender: Any) {
        let alert = UIAlertController(title: "Add New List", message: "Eiei", preferredStyle: .alert)
        alert.addTextField(configurationHandler: nil)
        let addaction = UIAlertAction(title: "Add", style: .default){
            _ in
            let texts = alert.textFields?[0].text ?? ""
            let text = TodolistData(name: texts)
            self.listData.append(text)
            let indexPath = IndexPath(row: self.listData.count-1, section: 0)
            self.tableview.insertRows(at: [indexPath], with: .automatic)
//            self.tableview.reloadData()
        }
        
        let cancleaction = UIAlertAction(title: "Cancle", style: .cancel, handler: nil)
        alert.addAction(addaction)
        alert.addAction(cancleaction)
        self.present(alert,animated:true,completion:nil)
    }
    
}
extension SecondViewController: UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return listData.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if  let cell = tableView.dequeueReusableCell(withIdentifier: "TableViewCell") as? TodoListTableViewCell{
            let index = indexPath.row
            cell.loadData2(names: self.listData[index].name)
            print(self.listData[index].name)
            return cell
        }
        return UITableViewCell()
    }
    
    
}
extension SecondViewController: UITableViewDelegate{
    
}
