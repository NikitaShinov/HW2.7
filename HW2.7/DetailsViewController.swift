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
//        mail.isHighlighted = true
        navigationItem.title = contact.name
        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
