//
//  SearchController.swift
//  UNSW
//
//  Created by Florian Fahrenholz on 22.09.18.
//  Copyright © 2018 Florian Fahrenholz. All rights reserved.
//

import UIKit

//Search Vars

var schoolsArray: [String] = ["Bio engineering", "Chemical Engineering", "Civil and Environmental Engineering", "Computer Science and Engineering", "Electrical Engineering and Telecommunications", "Mechanical and Manufacturing Engineering"]

var school = ""
var SortBy = ""


class SearchController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
       return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return schoolsArray[row]
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return schoolsArray.count
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        
        school = schoolsArray[row]
        
        
    }
 
    
    
    
    
    
    
    
 
    
    
    
    @IBOutlet weak var SwitchChoser: UISegmentedControl!
    
    
    @IBAction func SearchButo(_ sender: Any) {
        
        if( SwitchChoser.selectedSegmentIndex == 0){
            SortBy = "Overview"
        }
       /* if ( SwitchChoser.selectedSegmentIndex == 1){
            SortBy = "Lecture"
        }*/
        if( SwitchChoser.selectedSegmentIndex == 2){
            SortBy = "Difficulty"
        }
        if( SwitchChoser.selectedSegmentIndex == 3){
            SortBy = "WAM"
        }
        
    }
    
    
    @IBAction func GoButton(_ sender: Any) {
    }
    
    
    /*
    */
    
    
    
    

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
