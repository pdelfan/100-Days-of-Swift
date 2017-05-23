//
//  GroceriesTableTableViewController.swift
//  Basic Table View
//
//  Created by Pouria Delfanazari on 2017-05-22.
//  Copyright © 2017 Pouria Delfanazari. All rights reserved.
//

import UIKit

class GroceriesTableTableViewController: UITableViewController {

    // MARK: - View Did Load
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    // MARK: - Properties
    var groceries = ["Milk", "Apples", "Ham", "Eggs", "Pancakes"]


    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return groceries.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "groceriesCell", for: indexPath)

        // Configure the cell...
        cell.textLabel?.text = groceries[indexPath.row]

        return cell
    }
    



}
