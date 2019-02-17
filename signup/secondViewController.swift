//
//  secondViewController.swift
//  signup
//
//  Created by Mac on 16/12/18.
//  Copyright © 2018 Mac. All rights reserved.
//

import UIKit

class secondViewController: UIViewController {
    
    var dtePicker : UIDatePicker?
    var placePicker : UIPickerView?
    
    var nameArray = [String]()
    var emailArray = [String]()
    var placeArray = [String]()
    var dateArray = [String]()
    
    var selectedPlace: String?
    
    let place = ["sangli","pune","satara","kolhapur","miraj","nagpur"]
    
    @IBOutlet weak var txtname: UITextField!
    
    @IBOutlet weak var txtemail: UITextField!
   
    @IBOutlet weak var txtplace: UITextField!
    
    @IBOutlet weak var txtdate: UITextField!
    
    
    @IBAction func Save(_ sender: UIButton) {
         if txtdate.text != "" && txtplace.text != "" && txtemail.text != "" && txtname.text != ""
        {
       
        nameArray.append(txtname.text!)
        emailArray.append(txtemail.text!)
        placeArray.append(txtplace.text!)
        dateArray.append(txtdate.text!)
            
            print(nameArray)
            print(emailArray)
            print(placeArray)
            print(dateArray)
        
            let nameArraypass = UserDefaults.standard
            nameArraypass.set(nameArray, forKey: "name")
            
            let emailArraypass = UserDefaults.standard
           emailArraypass.set(emailArray, forKey: "email")
            
            let placeArraypass = UserDefaults.standard
            placeArraypass.set(placeArray, forKey: "place")
            
            let dateArraypass = UserDefaults.standard
            dateArraypass.set(dateArray, forKey: "date")
            
        let third = self.storyboard?.instantiateViewController(withIdentifier: "thhirdViewController") as! thhirdViewController
        navigationController?.pushViewController(third, animated: true)
        }
        else
        {
            let alert1 = UIAlertController(title: "Error!", message: "Fill all Data Correctly", preferredStyle: .alert)
            let ok1 = UIAlertAction(title: "Ok", style: .default) { (ok1) in
                print("Ok pressed")
                  }
            let cancel1 = UIAlertAction(title: "Cancel", style: .default) { (cancel1) in
                    print("Cancel pressed")
                }
                alert1.addAction(ok1)
                alert1.addAction(cancel1)
               self.present(alert1, animated: true, completion: nil)
            
            }
        }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        createDatePicker()
        createPlacePicker()
        creatToolbarPlace()
        creatToolbardate()
       
        // Do any additional setup after loading the view.
    }
    
    func createDatePicker()
    {
        
        dtePicker = UIDatePicker()
        dtePicker?.datePickerMode = .date
        dtePicker?.addTarget(self, action: #selector(dateChanged(datePicker:)), for: .valueChanged)
        txtdate.inputView = dtePicker
    }
    @objc
    func dateChanged( datePicker : UIDatePicker)
    {
        let dateformatter = DateFormatter()
        dateformatter.dateFormat = "MM/dd/yyyy"
        txtdate.text = dateformatter.string(from: datePicker.date)
       
    }
    func creatToolbardate()
    {
        let toolBar = UIToolbar()
        toolBar.sizeToFit()
        
        let doneBtn = UIBarButtonItem(title: "Done", style: .plain, target: self, action: #selector(dissmissKeyboard))
        toolBar.setItems([doneBtn], animated: false)
        toolBar.isUserInteractionEnabled = true
        
        txtdate.inputAccessoryView = toolBar
    }
  
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func createPlacePicker()
    {
        let plcePicker = UIPickerView()
        plcePicker.delegate = self
        txtplace.inputView = plcePicker
        
    }
 
    func creatToolbarPlace()
    {
        let toolBar = UIToolbar()
        toolBar.sizeToFit()
        
        let doneBtn = UIBarButtonItem(title: "Done", style: .plain, target: self, action: #selector(dissmissKeyboard))
        toolBar.setItems([doneBtn], animated: false)
        toolBar.isUserInteractionEnabled = true
  
        txtplace.inputAccessoryView = toolBar
    }
    
    @objc
    func dissmissKeyboard()
    {
        view.endEditing(true)
        
    }
}

extension secondViewController: UIPickerViewDelegate,UIPickerViewDataSource{
    
 
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return place.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return place[row]
    }
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        selectedPlace = place[row]
        txtplace.text = selectedPlace
    }

}
