//
//  ViewController.swift
//  checkResultOfStudent
//
//  Created by Akshay Yendhe on 23/12/22.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var firstNameTextField: UITextField!
    @IBOutlet weak var middleNameTextField: UITextField!
    @IBOutlet weak var lastNameTextField: UITextField!
    @IBOutlet weak var percentageTextField: UITextField!
    @IBOutlet weak var reservationSwitch: UISwitch!
    var switchValue : Bool = true
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func getResultButton(_ sender: Any) {

    let percentage = Double(percentageTextField.text!)!
        let stud =  Student(firstName: "\(firstNameTextField.text!)", middleName: "\(middleNameTextField.text!)", lastName: "\(lastNameTextField.text!)", percentage: percentage, isReservation: switchValue)
        
        let mainStoryBoard = UIStoryboard(name: "Main", bundle: .none)
        let secondVC = mainStoryBoard.instantiateViewController(withIdentifier: "SecondViewController") as! SecondViewController
        secondVC.student = stud
        self.present(secondVC, animated: true)
    }
    @IBAction func switchAction(_ sender: Any) {
        if reservationSwitch.isOn{
            switchValue = true
        }
        else{
            switchValue = false
        }
        }
    }
    


