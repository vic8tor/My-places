//
//  MainTableViewController.swift
//  My places
//
//  Created by Victor on 21.07.2022.
//

import UIKit

class MainViewController: UITableViewController {
    
    let restaurantNames = [
            "Хищник Стейкs & Burgers", "Сабор де ла Вида", "Джумбус", "АНТОНИО",
            "Болоньетта", "Брянский Бык", "Дольче Гриль", "Кофемания",
            "Йоркшир", "Russian pub", "Ткемали", "O2 Lounge",
            "AQ Kitchen", "Брукс", "Стейк'S"
        ]

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    // MARK: - Table view data source

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        restaurantNames.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! PlacesTableViewCell
        
        let place = restaurantNames[indexPath.row]
        cell.nameLabel.text = place
        cell.imageView?.image = UIImage(named: place)
        cell.typeLabel.text = "restaurant"
        
        return cell
    }
    
    // MARK: - Navigation


}
