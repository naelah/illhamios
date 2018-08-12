//
//  PatientRegisterViewController.swift
//  illham
//
//  Created by Naelah on 09/07/2018.
//  Copyright © 2018 Ideate. All rights reserved.
//

import UIKit
import SQLite3

class PatientRegisterViewController: UIViewController{
    
    @IBOutlet weak var namefield: UITextField!
    @IBOutlet weak var agefield: UITextField!
    @IBOutlet weak var genderfield: UITextField!
    @IBOutlet weak var icfield: UITextField!
    
    var db: OpaquePointer?

    @IBAction func submitbutton(_ sender: Any) {
        
        //getting values from textfields
        let name = namefield.text?.trimmingCharacters(in: .whitespacesAndNewlines)
        let age = agefield.text?.trimmingCharacters(in: .whitespacesAndNewlines)
        let gender = genderfield.text?.trimmingCharacters(in: .whitespacesAndNewlines)
        let ic = icfield.text?.trimmingCharacters(in: .whitespacesAndNewlines)
        
        
        //validating that values are not empty
        if(name?.isEmpty)!{
            namefield.layer.borderColor = UIColor.red.cgColor
            return
        }
        
        if(age?.isEmpty)!{
            agefield.layer.borderColor = UIColor.red.cgColor
            return
        }
        if(gender?.isEmpty)!{
            genderfield.layer.borderColor = UIColor.red.cgColor
            return
        }
        if(ic?.isEmpty)!{
            icfield.layer.borderColor = UIColor.red.cgColor
            return
        }
        
        //creating a statement
        var stmt: OpaquePointer?
        
        //the insert query
        let queryString = "INSERT INTO patients (name, age, ic, gender) VALUES (?,?,?,?)"
        
        //preparing the query
        if sqlite3_prepare(db, queryString, -1, &stmt, nil) != SQLITE_OK{
            let errmsg = String(cString: sqlite3_errmsg(db)!)
            print("error preparing insert: \(errmsg)")
            return
        }
        
        //binding the parameters
        if sqlite3_bind_text(stmt, 1, name, -1, nil) != SQLITE_OK{
            let errmsg = String(cString: sqlite3_errmsg(db)!)
            print("failure binding name: \(errmsg)")
            return
        }
        
        if sqlite3_bind_int(stmt, 2, (age! as NSString).intValue) != SQLITE_OK{
            let errmsg = String(cString: sqlite3_errmsg(db)!)
            print("failure binding name: \(errmsg)")
            return
        }
        if sqlite3_bind_text(stmt, 3, ic, -1, nil) != SQLITE_OK{
            let errmsg = String(cString: sqlite3_errmsg(db)!)
            print("failure binding name: \(errmsg)")
            return
        }
        if sqlite3_bind_text(stmt, 4, gender, -1, nil) != SQLITE_OK{
            let errmsg = String(cString: sqlite3_errmsg(db)!)
            print("failure binding name: \(errmsg)")
            return
        }
        
        //executing the query to insert values
        if sqlite3_step(stmt) != SQLITE_DONE {
            let errmsg = String(cString: sqlite3_errmsg(db)!)
            print("failure inserting patient: \(errmsg)")
            return
        }
        
        
        //displaying a success message
        print("New patient saved successfully")
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //the database file
        let fileURL = try! FileManager.default.url(for: .documentDirectory, in: .userDomainMask, appropriateFor: nil, create: false)
            .appendingPathComponent("IllhamDB.sqlite")
        
        //opening the database
        if sqlite3_open(fileURL.path, &db) != SQLITE_OK {
            print("error opening database")
        }
        
        //creating table
        if sqlite3_exec(db, "DROP TABLE IF EXISTS `patients`; CREATE TABLE IF NOT EXISTS `patients` (`id` INTEGER PRIMARY KEY,`age` varchar(45) DEFAULT NULL, `name` varchar(45) DEFAULT NULL,`ic` varchar(45) DEFAULT NULL, `gender` varchar(45) DEFAULT NULL)", nil, nil, nil) != SQLITE_OK {
            let errmsg = String(cString: sqlite3_errmsg(db)!)
            print("error creating table: \(errmsg)")
        }

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    

}
