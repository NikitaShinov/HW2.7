//
//  SecondTableViewController.swift
//  HW2.7
//
//  Created by Никита Шинов on 10.11.2021.
//

import UIKit

class SecondTableViewController: FirstTableViewController {
    
    // MARK: - Table view data source
    override func numberOfSections(in tableView: UITableView) -> Int {
        return SecondTableViewController.contacts.count
    }
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        let title = SecondTableViewController.contacts[section]
        return title.name
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 2
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
        let contact = SecondTableViewController.contacts[indexPath.section]
        
        if indexPath.row == 0 {
            cell.textLabel?.text = contact.email
        } else {
            cell.textLabel?.text = contact.phoneNumber
        }
        return cell
    }
}
