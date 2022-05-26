
import UIKit

class CountriesTableViewTableViewCell: UITableViewCell {

    @IBOutlet weak var CountryImage: UIImageView!
    @IBOutlet weak var CountryISCode: UILabel!
    @IBOutlet weak var CountryName: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    func setcountrycell(Cobject : Country)
    {
        CountryName.text = Cobject.name
        CountryISCode.text = Cobject.isoCode
        CountryImage.image = UIImage(named: Cobject.image)
       
    }

}
