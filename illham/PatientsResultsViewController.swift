//
//  PatientsResultsViewController.swift
//  illham
//
//  Created by Naelah on 09/07/2018.
//  Copyright © 2018 Ideate. All rights reserved.
//

import UIKit

class PatientsResultsViewController: UIViewController, ResultDelegate{
    
    var total: Int = 0
    
    weak var delegate: ResultDelegate?
    @IBOutlet weak var resultValue: UILabel!
    @IBOutlet weak var resultType: UILabel!
    @IBOutlet weak var desc: UILabel!
    @IBAction func save(_ sender: Any) {
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.delegate? = self
       setResults(result: total)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func setResults(result: Int){
        
        resultValue.text = "\(result)%"
        
        if result >= 0 && result < 21 {
            resultType.text = "Casual gamers"
            desc.text = "Patients scoring very low on the five critical factors that play occasionaly."
        }
        else if result >= 21 && result < 41 {
            resultType.text = "Regular gamers"
            desc.text = "Patients scoring very low on the five critical factors that play regularly, but not in a disordered/pathological way. These patients often play to avoid negative feelings and emotions- they play to feel better."
        }
        else if result >= 41 && result < 61 {
            resultType.text = "Low risk, High Engagement gamers"
            desc.text = "Patients are players that are highly-engaged in games. They play slightly more than regular gamers. They tend to think a lot about playing games and gaming is often a dominating activity in their head. They have a strong motivation to play in order to feel better and may feel the need to increase their gaming activity in order to achieve mood-enhancing effects."
        }
        else if result >= 61 && result < 81 {
            resultType.text = "High risk, High Engagement gamers"
            desc.text = "Patients are players that are highly-engaged in games. They may need to reflect on their gaming behavior as they present elevated addiction risk. This may lead to conflict in their lives (e.g. interpersonal conflict and/or intra psyhic conflicts). At this level, they may have tried quitting or reducing their games engagement but found it difficult to achieve that."
        }
        else if result >= 81 && result < 101 {
            resultType.text = "Disordered gamers"
            desc.text = "These are gamers struggling with gaming addiction. Overall, they present high average scores on all five critical factors and present with increased symptomatically related to gaming addiction."
            
        }
        
    }
    
    

    
    

}
