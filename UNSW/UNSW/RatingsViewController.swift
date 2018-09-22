//
//  RatingsViewController.swift
//  UNSW
//
//  Created by Florian Fahrenholz on 22.09.18.
//  Copyright © 2018 Florian Fahrenholz. All rights reserved.
//

import UIKit

var coursesArray: [[String]] =
[
    ["COURSECODE","CourseName","NumberOfRater","AverageOverview","AverageDifficulty","AverageWAM"],
    ["COMP3121","Algorithms&Prog_Tech","100","4","5","73","3.51"],
    ["COMP1531","Software_Eng_Fundamentals","30","4.7","2","70","3.5"],
    ["COMP1521","Comp_Sys_Fundamentals","80","3.9","3","60","3.49"],
    ["COMP1911","Computing_1A","40","4.3","3","75","3.49"],
    ["COMP3151","Foundations_of_Concurrency","35","4.2","3","88","3.48"],
    ["COMP2041","Software_Construction","50","3.9","3","80","3.48"],
    ["COMP1000","Web_Spreadsheets&Databases","20","4.1","3","80","3.47"],
    ["COMP3141","Soft_Sys","25","4.2","2","83","3.47"],
    ["COMP1400","Prog_For_Designers","10","4.5","2","70","3.46"],
    ["COMP2111","System_Modelling&Design","60","3.5","4","85","3.45"],
    ["COMP3131","Prog_Lang&Compil","15","1.9","3","78","3.42"],
    ["COMP2121","Microprocessors&Interfacing","70","3.1","5","90","3.42"],
    ["COMP1511","Prog_Fundamentals","100","3","4","60","3.4"],
    ["COMP2511","O-O_Design","80","2.7","5","63","3.38"],
    ["COMP2521","DSA","90","2.3","5","68","3.33"]

]


class RatingsViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
   
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 6
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "RatingsCell", for: indexPath) as UITableViewCell
     
            
            cell.textLabel?.text = coursesArray[myIndex][indexPath.row]

        
        return cell
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
