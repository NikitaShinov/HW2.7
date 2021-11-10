//
//  DetailsViewController.swift
//  HW2.7
//
//  Created by Никита Шинов on 10.11.2021.
//

import UIKit

class DetailsViewController: UIViewController {

    @IBOutlet var photo: UIImageView!
    @IBOutlet var phone: UILabel!
    @IBOutlet var mail: UILabel!
    
    var contact: Person!
    override func viewDidLoad() {
        super.viewDidLoad()
        photo.image = UIImage(named: contact.photo)
        phone.text = "Phone: \(contact.phoneNumber)"
        mail.text = "mail: \(contact.email)"
        navigationItem.title = contact.name
    }
    
}
