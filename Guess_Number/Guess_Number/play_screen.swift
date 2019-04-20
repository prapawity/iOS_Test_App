import UIKit
class play_screen: UIViewController {
    let listText = ["one","three","four","nine"]
    var state = 0
    var life = 3
    @IBOutlet weak var btnSubmits: UIButton!
    @IBOutlet weak var BtnRestarts: UIButton!
    @IBOutlet weak var showHistory: UILabel!
    @IBOutlet weak var textInput: UITextField!
    @IBOutlet weak var showText: UILabel!
    @IBOutlet weak var showLifes: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        BtnRestarts.isHidden = true
        btnSubmits.isHidden = false
        life = 3
        state = 0
        showText.text = String.init(repeating: " _", count: listText[state].count)
        showLifes.text = String.init(repeating: "❤️", count: life)
        showHistory.text = ""
        
        // Do any additional setup after loading the view.
    }
    
    @IBAction func submit(_ sender: Any) {
        let input = textInput.text!.lowercased()
        var showAns = ""
        if(input == listText[state]){
            if(state<listText.count-1){
                chageText()
                showAns = "\(input) is Correct"
            }else{
                showAns = "You Win!!"
                BtnRestarts.isHidden = false
                btnSubmits.isHidden = true
                
            }
        }else{
            if(life-1>0){
                checkLife()
                showAns = "\(input) is Incorrect"
            }
            else{
                checkLife()
                showAns = "You Lose"
                BtnRestarts.isHidden = false
                btnSubmits.isHidden = true
            }
        }
        showHistory.text = showHistory.text!+showAns+"\n"
        textInput.text = ""
    }
    
    @IBAction func restart(_ sender: Any) {
        viewDidLoad()
    }
    
    func chageText(){
        state += 1
        showText.text = String.init(repeating: " _", count: listText[state].count)
    }
    func checkLife(){
        life -= 1
        showLifes.text = String.init(repeating: "❤️", count: life)
    }
    
    
}
