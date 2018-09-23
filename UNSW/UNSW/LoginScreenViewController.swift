//
//  LoginScreenViewController.swift
//  UNSW
//
//  Created by Florian Fahrenholz on 22.09.18.
//  Copyright © 2018 Florian Fahrenholz. All rights reserved.
//

import UIKit


var RegisteringMode: Bool = false

class LoginScreenViewController: UIViewController {
    
    @IBOutlet weak var LoginButton: UIButton!
    
    @IBOutlet weak var ChangeButton: UIButton!
    
    @IBOutlet weak var LoginLabel: UILabel!
    
    
    @IBAction func ChangeLoginMode(_ sender: Any) {
        
        
        
    }
    
    
    

    override func viewDidLoad() {
        super.viewDidLoad()

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
