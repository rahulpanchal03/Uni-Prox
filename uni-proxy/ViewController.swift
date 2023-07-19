//
//  ViewController.swift
//  Shopping_App
//
//  Created by Kunal Saini on 28/04/23.
//

import UIKit
import Firebase

class ViewController: UIViewController {

    
    @IBOutlet weak var user: UITextField!
    @IBOutlet weak var pass: UITextField!
    
    @IBOutlet weak var output: UILabel!
    let userid = "Uni-Proxy"
    let userpass = "Dash02"
   

    
    override func viewDidLoad() {
        super.viewDidLoad()
        
       
        
    }

    @IBAction func Login(_ sender: UIButton) {
        
        if user.text==userid && pass.text==userpass{
            //output.text = "LOGIN SUCCESSFUL"s
            let VC = self.storyboard?.instantiateViewController(withIdentifier: "AViewController") as! AViewController?
            self.navigationController?.pushViewController(VC!, animated: true)
            
        }
        else{
            output.text = "Invalid Username/Password"
        }
     
    }
    @IBAction func Register(_ sender: UIButton) {
        
        let vc = self.storyboard?.instantiateViewController(withIdentifier: "registrationViewController") as! registrationViewController?
        self.navigationController?.pushViewController(vc!, animated: true)
    }
    
}

