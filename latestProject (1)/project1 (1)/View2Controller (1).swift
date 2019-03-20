

import UIKit

class View2Controller: UIViewController {
    var recieve : MovieModel?
    
    @IBOutlet weak var cover: UIImageView!
    @IBOutlet weak var pic: UIImageView!
    @IBOutlet weak var name: UILabel!
    @IBOutlet weak var director: UILabel!
    @IBOutlet weak var year: UILabel!
    @IBOutlet weak var type: UILabel!
    @IBOutlet weak var detail: UILabel!
    @IBOutlet weak var labelDetail: UILabel!
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        cover.image = UIImage(named: (recieve?.coverpic)!)
        title = recieve?.name
        pic.image = UIImage(named: (recieve?.img)!)
        name.text = recieve?.name!
        year.text = recieve?.year!
        director.text = recieve?.direct
        type.text = recieve?.type!
        detail.text = recieve?.descEng!
        labelDetail.text = "Detail"
        
    }
    @IBAction func ButtonPressed1(_ sender: Any) {
        name.text = recieve?.nameTh
        director.text = recieve?.directTg
        year.text = recieve?.yearTh
        type.text = recieve?.typeTh
        detail.text = recieve?.descThai!
        labelDetail.text = "รายละเอียด"
        
        
    }
    @IBAction func ButtonPressed2(_ sender: Any) {
        name.text = recieve?.name
        director.text = recieve?.direct
        year.text = recieve?.year
        type.text = recieve?.type
        detail.text = recieve?.descEng!
        labelDetail.text = "Detail"
    }
    
    
}
