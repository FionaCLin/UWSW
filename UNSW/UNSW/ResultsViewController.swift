//
//  ResultsViewController.swift
//  UNSW
//
//  Created by Florian Fahrenholz on 22.09.18.
//  Copyright © 2018 Florian Fahrenholz. All rights reserved.
//

import UIKit

var myIndex = 0

class ResultsViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    
    
    
    var NamesOfCourses:[String] = ["Algorithms&Prog_Tech","Software_Eng_Fundamentals","Comp_Sys_Fundamentals","Computing_1A","Foundations_of_Concurrency","Software_Construction","Web_Spreadsheets&Databases","Soft_Sys","Prog_For_Designers","System_Modelling&Design","Prog_Lang&Compil","Microprocessors&Interfacing","Prog_Fundamental","O-O_Design","DSA"]
    
    
    
    
    //var RatingsShowed:[String] = ["Great", "Boring", "Me neither"]
    
    
    
    
    @IBOutlet weak var NameOfCourse: UITableView!
    
    @IBOutlet weak var RatingOfCourse: UITableView!
    
    
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return NamesOfCourses.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell(style: UITableViewCellStyle.default, reuseIdentifier: "SearchCell")
        
      var cellLabel = ""
        
        
        if let tempLabel = NamesOfCourses[indexPath.row] as? String{
            cellLabel = tempLabel
        }
        
       cell.textLabel?.text = cellLabel
  
        
        return cell
        
        
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        myIndex = indexPath.row
       // performSegue(withIdentifier: "goToRatings", sender: self)
        performSegue(withIdentifier: "goToRatings2", sender: self)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        


        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    



}
