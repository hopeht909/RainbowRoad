//
//  ViewController.swift
//  RainbowRoad
//
//  Created by admin on 10/12/2021.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var rainbowTableView: UITableView!
    
    var colors : [UIColor] = [.red, .orange, .yellow, .green, .blue, .purple]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        rainbowTableView.dataSource = self
        rainbowTableView.rowHeight = 120
    }


}
extension ViewController : UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 6
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = rainbowTableView.dequeueReusableCell(withIdentifier: "rainbowCell", for: indexPath)
        
        cell.backgroundColor = colors[indexPath.row]
        
        return cell
    }
    
}

