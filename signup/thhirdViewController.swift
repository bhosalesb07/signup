//
//  thhirdViewController.swift
//  signup
//
//  Created by Mac on 16/12/18.
//  Copyright © 2018 Mac. All rights reserved.
//

import UIKit

class thhirdViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {
    
     var selsecednameArray = [String]()
     var selsecedemailArray = [String]()
     var selsecedplaceArray = [String]()
     var selseceddateArray = [String]()
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return selsecednameArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
      let cell = tableView.dequeueReusableCell(withIdentifier: "cell") as! TableViewCell
        cell.lblname.text = selsecednameArray[indexPath.row]
        cell.lblemail.text = selsecedemailArray[indexPath.row]
        cell.lblplace.text = selsecedplaceArray[indexPath.row]
        cell.lbldate.text = selseceddateArray[indexPath.row]
        return cell
    }
  
    
    
    @IBOutlet weak var tableview: UITableView!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        selseceddateArray = UserDefaults.standard.value(forKey: "date") as! Array
        selsecedemailArray = UserDefaults.standard.value(forKey: "email") as! Array
        selsecednameArray = UserDefaults.standard.value(forKey: "name") as! Array
        selsecedplaceArray = UserDefaults.standard.value(forKey: "place") as! Array

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
