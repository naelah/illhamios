//
//  PatientsQuestionsViewController.swift
//  illham
//
//  Created by Naelah on 09/07/2018.
//  Copyright © 2018 Ideate. All rights reserved.
//

import UIKit

protocol ResultDelegate {
    func setResults(result: Int)
}

class PatientsQuestionsViewController: UIViewController{
    
    var delegate: ResultDelegate?
    var questions: [String] = []
    var answers: [Int] = []
    var category: [String] = []
    var total: Int = 0
    var flag: Int = 0
    var mcount: Int = 0
    var scount: Int = 0
    var lcount: Int = 0
    var hcount: Int = 0
    var pcount: Int = 0
    var mtotal: Int = 0
    var stotal: Int = 0
    var ltotal: Int = 0
    var htotal: Int = 0
    var ptotal: Int = 0
    
    @IBOutlet weak var questionLabel: UILabel!
    
    @IBAction func a1(_ sender: Any) {
        recordMark(1)
        
    }
    @IBAction func a2(_ sender: Any) {
        recordMark(2)
    }
    @IBAction func a3(_ sender: Any) {
        recordMark(3)
    }
    @IBAction func a4(_ sender: Any) {
        recordMark(4)
    }
    @IBAction func a5(_ sender: Any) {
        recordMark(5)
    }
    
    @IBAction func submit(_ sender: Any) {
        
//        var viewControllerStoryboardId = "PatientsResultsViewController"
//        var storyboardName = "Main"
//        var storyboard = UIStoryboard(name: storyboardName, bundle: Bundle.main)
//        let vc = storyboard.instantiateViewController(withIdentifier: viewControllerStoryboardId) as UIViewController?
//        //vc.total = "100" //"\(self.total)"
//        vc.total = self.total
//        navigationController?.pushViewController(vc!, animated: true)
        
        
        //user delegates
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        setQuestion()
        
        flag = 0
        questionLabel.text = questions[0]

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func loadQuestion(){
        
        questionLabel.text = questions[0]
    
    }
    
    func nextQuestion(_ id: Int) -> Void {
        questionLabel.text = questions[id]
    }
    
    func recordMark(_ id: Int) -> Void {
        answers.append(id)
        flag = flag + 1
        
        if questions.count - 1 <= flag{
            calcTotal()
        } else{
        
        nextQuestion(flag)
        print("question: ", questions.count)
        print("flag:", flag)
        }
    }
    
    func calcTotal(){
        for i in 0 ..< questions.count - 1 {
            
            if category[i] == "MM"{
                mtotal = mtotal + answers[i]
                mcount = mcount + 1
            }
            else if category[i] == "S"{
                stotal = stotal + answers[i]
                scount = scount + 1
                
            }
            else if category[i] == "LoC"{
                ltotal = ltotal + answers[i]
                lcount = lcount + 1
                
            }
            else if category[i] == "H"{
                htotal = htotal + answers[i]
                hcount = hcount + 1
                
            }
            else if category[i] == "P"{
                ptotal = ptotal + answers[i]
                pcount = pcount + 1
                
            }
            
        }
        if mcount == 0 { mcount = 1}
        if lcount == 0 { lcount = 1}
        if pcount == 0 { pcount = 1}
        if scount == 0 { scount = 1}
        if hcount == 0 { hcount = 1}
        
        total = (mtotal/mcount) + (stotal/scount) + (htotal/hcount) + (ptotal/pcount) + (ltotal/lcount)
        
        delegate?.setResults(result: total)
        
        print("Total: \(total)")
    }
    
    func setQuestion(){
        
        //Category - MM (Mood Modification), S (Salience), LoC (Loss of Control), H (Harm), P (Physical)

        // Mood Modification
        questions.append("Do you avoid negative temper or feelings by playing games?")
        category.append("MM")
        
        questions.append("Do you play games to escape from your sorrows or get relief from bad feelings you might have?")
        category.append("MM")
        
        questions.append("Do you play games to forget about whatever’s bothering you?")
        category.append("MM")
        

        // Salience
        
        questions.append("Do you usually think about your next gaming session when you are not playing?")
        category.append("S")
        
        questions.append("Do you often lose sleep because of playing games?")
        category.append("S")
        
        questions.append("Do you think that gaming has become the most time consuming activity in your life?")
        category.append("S")
        
        questions.append("Have others unsuccessfully tried to reduce your time spent on games?")
        category.append("S")
        
        // Loss of Control
        
        questions.append("Did you try to stay of online but was not able to?")
        category.append("LoC")
        
        questions.append("Do you recognize feeling detached from time when being online?")
        category.append("LoC")
        
        questions.append("Do you lose interest in other hobbies because of your gaming?")
        category.append("LoC")
        
        // Harm
        
        // questions.append("")
        // category.append("")
        
        // Physical
        
        // questions.append("")
        // category.append("")
        
        
    }
    
//    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
//        if let destination = segue.destination as? PatientsResultsViewController {
//            destination.delegate = self
//        }
//    }


}
