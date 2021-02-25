//
//  ThirdTableViewController.swift
//  WA_Assignment_7
//
//  Created by Blashko Maksim on 24.02.2021.
//

import UIKit

protocol ThirdViewControllerDelegate: class {
    func saveFullName(fullName: String)
}

class ThirdViewController: UIViewController {

    @IBOutlet weak var firstName: UILabel!
    @IBOutlet weak var surname: UILabel!
    
    weak var delegate: ThirdViewControllerDelegate?
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    @IBAction func saveButtonAction(_ sender: UIButton) {
        var fullName = firstName.text ?? ""
        fullName += " " + (surname.text ?? "")
        delegate?.saveFullName(fullName: fullName)
    }
}
