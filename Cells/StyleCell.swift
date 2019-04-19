import UIKit
class StyleCell: UICollectionViewCell {
    @IBOutlet weak var nameLabel: UILabel!
    override func awakeFromNib() {
        self.layer.cornerRadius = 8.0
        self.clipsToBounds = true
    }    
}
