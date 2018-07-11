//
//  PatientsProfileViewController.swift
//  illham
//
//  Created by Naelah on 11/07/2018.
//  Copyright © 2018 Ideate. All rights reserved.
//

import UIKit

class PatientsProfileViewController: UIViewController, UITableViewDataSource, UITableViewDelegate{

    @IBOutlet weak var patientInfo: UILabel!
    @IBOutlet weak var profileTable: UITableView!
    
    var dates: [String] = ["Today","January 20","2018 November 30"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        patientInfo.text = "Name: Adam Nuh\n Gender: Male\n IC: 930224056787\nAge: 18 Years Old"
        profileTable.delegate = self
        profileTable.dataSource = self

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return dates.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "patientProfileCell") as? PatientProfileCell
        cell?.date.text = dates[indexPath.row]
        return cell!
    }
    
}
