//
//  ViewController.swift
//  AppleRocket
//
//  Created by Kaue Ludovico on 15/01/23.
//

import UIKit

class ListPhoneViewController: UIViewController {
    
    typealias CustomView = ListPhoneScreenView
    var customView = CustomView()
    
    var abc = ["a", "b", "c", "d", "e"]
    
    override func loadView() {
        view = customView
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        customView.tableView.delegate = self
        customView.tableView.dataSource = self
    }
}

extension ListPhoneViewController: UITableViewDelegate, UITableViewDataSource {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 5
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: customView.cellId, for: indexPath) as! ListPhoneTableViewCell
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print(indexPath.item)
        print(indexPath.row)
        print(indexPath.section)
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return abc[section]
    }
}
