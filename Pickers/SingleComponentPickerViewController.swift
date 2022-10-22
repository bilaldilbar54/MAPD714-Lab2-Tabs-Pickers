//
//  SingleComponentPickerViewController.swift
//  Pickers
//
//  Created by Muhammad Bilal Dilbar on 2022-10-21.
//

import UIKit

class SingleComponentPickerViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource
{
    @IBOutlet weak var singlePicker: UIPickerView!
    
    private let characterNames = ["Luke", "Leia", "Han", "Chewbacca", "Artoo", "Threepio", "Lando"]
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    //Picker Data Source Methods
    func numberOfComponents(in pickerView: UIPickerView) -> Int
    {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int
    {
        return characterNames.count
    }

    //Picker Delegate Methods
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String?
    {
        return characterNames[row]
    }
    
    @IBAction func onButtonPressed(_ sender: Any)
    {
        let row = singlePicker.selectedRow(inComponent: 0)
        let selected = characterNames[row]
        let title = "You selected \(selected)!"
        let alert = UIAlertController(title: title, message: "Thank you for choosing", preferredStyle: .alert)
        let action = UIAlertAction(title: "You're welcome", style: .default, handler: nil)
        alert.addAction(action)
        present(alert, animated: true, completion: nil)
    }
}
