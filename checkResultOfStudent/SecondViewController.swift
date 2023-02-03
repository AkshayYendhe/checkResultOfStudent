//
//  SecondViewController.swift
//  checkResultOfStudent
//
//  Created by Akshay Yendhe on 23/12/22.
//

import UIKit

class SecondViewController: UIViewController {

    @IBOutlet weak var firstNameLabel: UILabel!
    @IBOutlet weak var midNameLabel: UILabel!
    @IBOutlet weak var lastNameLabel: UILabel!
   
    var student : Student?
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        if let stud = student {
            firstNameLabel.text = stud.getFullName()
            midNameLabel.text = "\(stud.percentage)"
            lastNameLabel.text = stud.getResult()
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()

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
