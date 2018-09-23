//
//  Ratings2ViewController.swift
//  UNSW
//
//  Created by Florian Fahrenholz on 22.09.18.
//  Copyright © 2018 Florian Fahrenholz. All rights reserved.
//

import UIKit
//overview
var coursesArray2: [[String]] =
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
//Difficulty
var coursesArray3: [[String]] =
    [
        ["COURSECODE","CourseName","NumberOfRater","AverageOverview","AverageDifficulty","AverageWAM"],
        ["COMP3121","Algorithms&Prog_Tech","100","4","5","73","3.62"],
        ["COMP2521","DSA","90","2.3","5","68","3.61"],
        ["COMP2511","O-O_Design","80","2.7","5","63","3.59"],
        ["COMP2121","Microprocessors&Interfacing","70","3.1","5","90","3.57"],
        ["COMP1511","Prog_Fundamentals","100","3","4","60","3.51"],
        ["COMP2111","System_Modelling&Design","60","3.5","4","85","3.49"],
        ["COMP1000","Web_Spreadsheets&Databases","20","4.1","3","80","3.44"],
        ["COMP3131","Prog_Lang&Compil","15","1.9","3","78","3.44"],
        ["COMP1400","Prog_For_Designers","10","4.5","2","70","3.43"],
        ["COMP3151","Foundations_of_Concurrency","35","4.2","3","88","3.43"],
        ["COMP1911","Computing_1A","40","4.3","3","75","3.43"],
        ["COMP2041","Software_Construction","50","3.9","3","80","3.42"],
        ["COMP3141","Soft_Sys","25","4.2","2","83","3.41"],
        ["COMP1521","Comp_Sys_Fundamentals","80","3.9","3","60","3.41"],
        ["COMP1531","Software_Eng_Fundamentals","30","4.7","2","70","3.4"]

]
//WAM
var coursesArray4: [[String]] =
[
    ["COMP2121","Microprocessors&Interfacing","70","3.1","5","90"],
    ["COMP3151","Foundations_of_Concurrency","35","4.2","3","88"],
    ["COMP2111","System_Modelling&Design","60","3.5","4","85"],
    ["COMP3141","Soft_Sys","25","4.2","2","83"],
    ["COMP1000","Web_Spreadsheets&Databases","20","4.1","3","80"],
    ["COMP2041","Software_Construction","50","3.9","3","80"],
    ["COMP3131","Prog_Lang&Compil","15","1.9","3","78"],
    ["COMP1911","Computing_1A","40","4.3","3","75"],
    ["COMP3121","Algorithms&Prog_Tech","100","4","5","73"],
    ["COMP1400","Prog_For_Designers","10","4.5","2","70"],
    ["COMP1531","Software_Eng_Fundamentals","30","4.7","2","70"],
    ["COMP2521","DSA","90","2.3","5","68"],
    ["COMP2511","O-O_Design","80","2.7","5","63"],
    ["COMP1511","Prog_Fundamentals","100","3","4","60"],
    ["COMP1521","Comp_Sys_Fundamentals","80","3.9","3","60"]

]
class Ratings2ViewController: UIViewController {

    func DisplayAlert(Title: String, Message: String){
        
        
        let alert = UIAlertController(title: Title, message: Message, preferredStyle: UIAlertControllerStyle.alert)
        
        alert.addAction(UIAlertAction(title: "Ok", style: .default, handler: { (action) in
            self.dismiss(animated: true, completion: nil)
        }))
        
        self.present(alert, animated: true, completion: nil)
        
        
    }
    
    
    
    
    
    
    //NAME
    
    
    @IBAction func RateButton(_ sender: Any) {
        DisplayAlert(Title: "Success", Message: "You successfully rated for " + coursesArray2[myIndex][0])
        
        
        
    }
    
    @IBOutlet weak var NameOfCourse: UILabel!
    
    //CODE
    
    @IBOutlet weak var CodeOfCourse: UILabel!
    
    
    @IBOutlet weak var DiffOfCourse: UILabel!
    

    @IBOutlet weak var blaaa: UILabel!
    
    @IBOutlet weak var GradeOfCourse: UILabel!
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        if(SortBy == "Overview"){
        self.NameOfCourse.text = coursesArray2[myIndex][0]
        self.CodeOfCourse.text = coursesArray2[myIndex][1]
        self.DiffOfCourse.text = coursesArray2[myIndex][2]
        self.blaaa.text = coursesArray2[myIndex][3]
        self.GradeOfCourse.text = coursesArray2[myIndex][4]
        }
        if(SortBy == "Difficulty"){
            self.NameOfCourse.text = coursesArray3[myIndex][0]
            self.CodeOfCourse.text = coursesArray3[myIndex][1]
            self.DiffOfCourse.text = coursesArray3[myIndex][2]
            self.blaaa.text = coursesArray3[myIndex][3]
            self.GradeOfCourse.text = coursesArray3[myIndex][4]
        }
        if(SortBy == "WAM"){
            self.NameOfCourse.text = coursesArray4[myIndex][0]
            self.CodeOfCourse.text = coursesArray4[myIndex][1]
            self.DiffOfCourse.text = coursesArray4[myIndex][2]
            self.blaaa.text = coursesArray4[myIndex][3]
            self.GradeOfCourse.text = coursesArray4[myIndex][4]
        }
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
