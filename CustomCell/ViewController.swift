
import UIKit

class ViewController: UIViewController, UITableViewDataSource {
    @IBOutlet var tableView: UITableView!
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return itemList.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath) as! MyTableViewCell
        let dicTemp = itemList[indexPath.row]
        cell.backgroundColor = .clear
        cell.nameLabel.text = dicTemp["name"]
        cell.amountLabel.text = dicTemp["amount"]
        cell.valueLabel.text = dicTemp["value"]
        cell.imgView.image = UIImage(named:dicTemp["image"]!)
        return cell
    }
    
    var itemList = [[String:String]]()
    override func viewDidLoad() {
        super.viewDidLoad()
        let title = UILabel(frame: CGRect(x: 0, y: 0, width: 20, height: 20))
        title.text = "Grocery Market"
        title.textColor = .blue
        title.textAlignment = .center
        self.navigationItem.titleView = title
        
        let item1 = ["name":"Apple", "image":"apple.jpeg", "amount":"6", "value":"$3"]
        let item2 = ["name":"Blueberry", "image":"blueberry.jpg", "amount":"10", "value":"$30"]
        let item3 = ["name":"Carrot", "image":"carrot.jpg", "amount":"13", "value":"$5"]
        let item4 = ["name":"Cherry", "image":"cherry.png", "amount":"1", "value":"$2"]
        let item5 = ["name":"Grape", "image":"grape.jpg", "amount":"13", "value":"$1"]
        let item6 = ["name":"Kiwi", "image":"kiwi.png", "amount":"2", "value":"$15"]
        let item7 = ["name":"Lemon", "image":"lemon.png", "amount":"3", "value":"$6"]
        let item8 = ["name":"Lime", "image":"lime.jpg", "amount":"4", "value":"$4"]
        let item9 = ["name":"Meat", "image":"meat.jpg", "amount":"5", "value":"$2"]
        let item10 = ["name":"Strawberry", "image":"strawberry.jpg", "amount":"7", "value":"$8"]
        let item11 = ["name":"Tomato", "image":"tomato.png", "amount":"30", "value":"$3"]
        let item12 = ["name":"Vegetable", "image":"vegetable.jpg", "amount":"40", "value":"$7"]
        let item13 = ["name":"Melon", "image":"watermelon.png", "amount":"5", "value":"$10"]
        itemList = [item1, item2, item3, item4, item5, item6, item7, item8, item9, item10, item11, item12, item13]
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "showDetail" {
            let destination = segue.destination as! DetailViewController
            destination.detailData  = itemList[tableView.indexPathForSelectedRow!.row]
        }
    }
    
}

