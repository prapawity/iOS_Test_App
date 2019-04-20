import UIKit

class ViewController: UIViewController{
    
    var names = [TodolistData]()
    @IBOutlet weak var tableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource = self
        tableView.delegate = self
        self.navigationItem.title = "Todo"    }

    @IBAction func addObj(_ sender: Any) {
        let alert = UIAlertController(title: "Add New List", message: "Eiei", preferredStyle: .alert)
        alert.addTextField(configurationHandler: nil)
        let addaction = UIAlertAction(title: "Add", style: .default){
            _ in
            let texts = alert.textFields?[0].text ?? ""
            let text = TodolistData(name: texts)
            self.names.append(text)
//            self.tableView.reloadData()
            let indexPath = IndexPath(row: self.names.count-1, section: 0)
            self.tableView.insertRows(at: [indexPath], with: .automatic)
        }
        
        let cancleaction = UIAlertAction(title: "Cancle", style: .cancel, handler: nil)
        alert.addAction(addaction)
        alert.addAction(cancleaction)
        self.present(alert,animated:true,completion:nil)
        
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        performSegue(withIdentifier: "secondNav", sender:names[indexPath.row])
    }
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if(editingStyle == .delete){
            self.names.remove(at: indexPath.row)
            self.tableView.deleteRows(at: [indexPath], with: .automatic)
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "secondNav" {
            if let eiei = segue.destination as?
                SecondViewController{
                var ans = (sender as? TodolistData)!
                eiei.titles = ans.name
            }
        }
    }
    
}

extension ViewController: UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return names.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if  let cell = tableView.dequeueReusableCell(withIdentifier: "TodoListTableViewCell") as? TodoListTableViewCell{
            let index = indexPath.row
            cell.loadData(names: self.names[index].name)
            return cell
        }
        
//        return cell
        return UITableViewCell()
    }
    
    
}
extension ViewController: UITableViewDelegate{
    
}

