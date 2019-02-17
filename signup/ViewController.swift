//
//  ViewController.swift
//  signup
//
//  Created by Mac on 16/12/18.
//  Copyright © 2018 Mac. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var email = "swapnil"
    var password = "1234"
    @IBOutlet weak var txt1email: UITextField!
    
    @IBOutlet weak var txtpass: UITextField!
    

    @IBAction func btnlogin(_ sender: UIButton) {
        if (email == txt1email.text) && (password == txtpass.text)
        {
            print("Login Successful")
            
            let second = self.storyboard?.instantiateViewController(withIdentifier: "secondViewController") as! secondViewController
            navigationController?.pushViewController(second, animated: true)
        }
        else
        {
            print("Email and Password Incorrect")
            
            let alert = UIAlertController(title: "Error!", message: "User Email and password Incorrect", preferredStyle: .alert)
            
            let ok = UIAlertAction(title: "Ok", style: .default) { (ok) in
                print("ok pressed")
                
            }
            let cancel = UIAlertAction(title: "Cancel", style: .default) { (cancel) in
                
                print("cancel pressed")
            }
            alert.addAction(ok)
            alert.addAction(cancel)
            self.present(alert, animated: true, completion: nil)
        }
        
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

