//
//  PatientAnswerCell.swift
//  illham
//
//  Created by Naelah on 11/07/2018.
//  Copyright © 2018 Ideate. All rights reserved.
//

import UIKit

class PatientAnswerCell: UITableViewCell {
    @IBOutlet weak var question: UILabel!
    @IBOutlet weak var ans: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
