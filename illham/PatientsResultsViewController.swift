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
    
    @IBOutlet weak var resultValue: UILabel!
    @IBOutlet weak var resultType: UILabel!
    @IBOutlet weak var desc: UILabel!
    @IBAction func save(_ sender: Any) {
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print(resultValue.text)
        

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func setResults(result: Int){
        resultValue.text = "\(result)"
        print(result)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
        if segue.identifier == "resultSegue" {
            let vc : PatientsQuestionsViewController = segue.destination as! PatientsQuestionsViewController
            vc.delegate = self
        }
    }

}
