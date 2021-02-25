//
//  FirstViewController.swift
//  WA_Assignment_7
//
//  Created by Blashko Maksim on 24.02.2021.
//

import UIKit

class FirstViewController: UIViewController {

    @IBOutlet weak var firstName: UITextField!
    @IBOutlet weak var fullName: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToSecondTable" {
            guard let secondVC = segue.destination as? SecondViewController else { return }
            _ = secondVC.view
            secondVC.firstName = firstName.text ?? ""
            secondVC.delegate = self            
        }
    }
    
    @IBAction func continueButtonAction(_ sender: UIButton) {
        performSegue(withIdentifier: "goToSecondTable", sender: nil)
    }
    
    @IBAction func unwindHome(_ sender: UIStoryboardSegue) {
    }
}

extension FirstViewController: ThirdViewControllerDelegate {
    func saveFullName(fullName: String) {
        self.fullName.isHidden = false
        self.fullName.text = fullName
        //self.firstName.isHidden = true
    }
}
