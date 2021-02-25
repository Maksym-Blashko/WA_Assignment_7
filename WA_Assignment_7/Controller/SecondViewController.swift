//
//  SecondTableViewController.swift
//  WA_Assignment_7
//
//  Created by Blashko Maksim on 24.02.2021.
//

import UIKit

class SecondViewController: UIViewController {

    @IBOutlet weak var surname: UITextField!
    var firstName = ""
    
    weak var delegate: ThirdViewControllerDelegate?
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let thirdVC = segue.destination as? ThirdViewController else { return }
        _ = thirdVC.view
        thirdVC.firstName.text = firstName
        thirdVC.surname.text = surname.text
        thirdVC.delegate = delegate
        
    }
    
    @IBAction func continueButtonAction(_ sender: UIButton) {
        performSegue(withIdentifier: "goToThirdTable", sender: nil)
    }
}
