//
//  registrationViewController.swift
//  Shopping_App
//
//  Created by Kunal Saini on 06/05/23.
//

import UIKit
import Firebase

class registrationViewController: UIViewController {
    
    @IBOutlet weak var name: UITextField!
    @IBOutlet weak var username: UITextField!
    @IBOutlet weak var password: UITextField!
    
    var ref : DatabaseReference!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        ref = Database.database().reference()

    }
    @IBAction func register(_ sender: UIButton) {
        
       if name.text != "" && username.text != "" && password.text != ""{
            self.ref.child("Registration").childByAutoId().setValue(["name":name.text, "username":username.text, "password":password.text])
           let ac = self.storyboard?.instantiateViewController(withIdentifier: "ViewController") as! ViewController?
           self.navigationController?.pushViewController(ac!, animated: true)
            
        }
        
    }
    
}
