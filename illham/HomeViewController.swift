//
//  HomeViewController.swift
//  illham
//
//  Created by Naelah on 09/07/2018.
//  Copyright © 2018 Ideate. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController, UITableViewDelegate, UITableViewDataSource{
    
    @IBOutlet weak var userProfile: UIImageView!
    @IBOutlet weak var userInfo: UILabel!
    @IBOutlet weak var homeTable: UITableView!
    
    
    var notifications: [String] = ["added 3 patients", "added 6 patients", "added 2 patients", "added 10 patients"]
    var notificationDates: [String] = ["Today", "Yesterday", "July 10", "July 11"]


    @IBOutlet weak var userLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        self.userInfo.text = "Dr. Khadijah Fatimah\n Department of Psychology"
        homeTable.delegate = self
        homeTable.dataSource = self

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return notifications.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "homeCell") as? HomeCell
        
        cell?.dateLabel.text = notificationDates[indexPath.row]
        cell?.notificationLabel.text = notifications[indexPath.row]
        
        return cell!
    }
    
    


}
