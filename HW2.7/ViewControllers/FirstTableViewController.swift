//
//  FirstTableViewController.swift
//  HW2.7
//
//  Created by Никита Шинов on 10.11.2021.
//

import UIKit

class FirstTableViewController: UITableViewController {
    
    static let contacts = Person.createContact()
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }

    // MARK: - Table view data source

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return FirstTableViewController.contacts.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
        let contact = FirstTableViewController.contacts[indexPath.row]
        cell.textLabel?.text = contact.name

        return cell
    }


    // MARK: - Navigation
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let contactDetailsVC = segue.destination as? DetailsViewController else { return }
        guard let indexPath = tableView.indexPathForSelectedRow else { return }
        let contact = FirstTableViewController.contacts[indexPath.row]
        contactDetailsVC.contact = contact
    }

}
