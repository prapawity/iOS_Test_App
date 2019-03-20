import UIKit

class MovieCell: UITableViewCell {
    
    @IBOutlet weak var movieImg: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    

    override func awakeFromNib() {
        super.awakeFromNib()
        
    }
    
    func configCell(movie: MovieModel) {
        movieImg.image = UIImage(named: movie.img!)
        nameLabel.text = movie.name
    }

    @IBAction func moreButtonPressed(_ sender: Any) {
        
    }
}
