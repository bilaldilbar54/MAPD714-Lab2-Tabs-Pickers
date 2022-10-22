//
//  DatePickerViewController.swift
//  Pickers
//
//  Created by Muhammad Bilal Dilbar on 2022-10-21.
//

import UIKit

class DatePickerViewController: UIViewController
{

    @IBOutlet weak var datePicker: UIDatePicker!
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        let date = NSDate()
        datePicker.setDate(date as Date, animated: true)
    }
    
    @IBAction func onButtonPressed(_ sender: Any)
    {
        let date = datePicker.date
        let message = "The date and time you selected is \(date)"
        let alert = UIAlertController(title: "Data & Time Selected", message: message, preferredStyle: .alert)
        let action = UIAlertAction(
            title: "That's so true!", style: .default, handler: nil)
        alert.addAction(action)
        present(alert,animated: true, completion: nil)
    }
}
