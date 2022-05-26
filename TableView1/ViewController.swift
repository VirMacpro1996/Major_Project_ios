
import UIKit

class ViewController: UIViewController , UITableViewDelegate ,UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return countries[section].count
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
    }
    func numberOfSections(in tableView: UITableView) -> Int {
        return 5
    }
//    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
//        return 4.0
//    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let countryObject = countries[indexPath.section][indexPath.row]
        let cell = ProductViewTable.dequeueReusableCell(withIdentifier:"productCell") as! CountriesTableViewTableViewCell
        cell.setcountrycell(Cobject: countryObject)
        return cell
    }
//   func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
//        return "Country List \(section + 1 ) :  "
//                    }
//    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
//        let header = UIView(frame: CGRect(x: 0, y: 0, width: view.frame.size.width, height: 50))
//        header.backgroundColor = .systemMint
//        let label = UILabel(frame: CGRect(x: 0, y: 0, width: view.frame.size.width, height: 30))
//        label.text = "Country List \(section + 1 ) : "
//        label.font = .systemFont(ofSize: 30, weight: .bold)
//        header.addSubview(label)
//        return header
//    }
 
    @IBOutlet weak var ProductViewTable: UITableView!
    var countries : [[Country]] = []
    override func viewDidLoad() {
        super.viewDidLoad()
        Filldata()
        // Do any additional setup after loading the view.
        ProductViewTable.delegate = self
        ProductViewTable.dataSource = self
       // ProductViewTable.rowHeight = 70
    }
     func Filldata()
    {
        
        countries.append( [Country(isocode: "Austria, officially the Republic of Austria, is a country in the southern part of Central Europe.", name: "Austria",image : "austria")
             ])
             countries.append([Country(isocode: "Germany is a Western European country with a landscape of forests, rivers, mountain ranges and North Sea beaches.", name: "Germany",image : "germany")])
        countries.append([Country(isocode: "Greece is a country in southeastern Europe with thousands of islands throughout the Aegean and Ionian seas.", name: "Greece" ,image : "greece" ) ])
             countries.append([Country(isocode: "France, in Western Europe, encompasses medieval cities, alpine villages and Mediterranean beaches.", name: "France" ,image : "france" )] )
        countries.append([Country(isocode: "Belgium, a country in Western Europe, is known for medieval towns, Renaissance architecture and as headquarters of the European Union and NATO.", name: "Belgium",image : "belgium")])
//
    }
}

