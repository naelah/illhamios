//
//  PatientsCell.swift
//  illham
//
//  Created by Naelah on 09/07/2018.
//  Copyright © 2018 Ideate. All rights reserved.
//

import UIKit

class PatientsCell: UITableViewCell {

    @IBAction func patientProfile(_ sender: Any) {
    }

    @IBAction func patientNewEval(_ sender: Any) {
    }
    @IBOutlet weak var patientName: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
