//
//  PatientsQuestionsViewController.swift
//  illham
//
//  Created by Naelah on 09/07/2018.
//  Copyright © 2018 Ideate. All rights reserved.
//

import UIKit
import SCLAlertView

protocol ResultDelegate: class{
    func setResults(result: Int)
}

class PatientsQuestionsViewController: UIViewController{
    
    weak var delegate: ResultDelegate?
    var questions: [String] = []
    var answers: [Int] = []
    var category: [String] = []
    var total: Int = 0
    var flag: Int = 0
    var percenttotal: Float = 0.0
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
   
    
    @IBAction func savebtn(_ sender: Any) {
    }
    @IBOutlet weak var sdbtn: UIButton!
    @IBOutlet weak var dbtn: UIButton!
    @IBOutlet weak var nbtn: UIButton!
    @IBOutlet weak var abtn: UIButton!
    @IBOutlet weak var sabtn: UIButton!
    @IBOutlet weak var submitbtn: UIButton!
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
        
        delegate?.setResults(result: total)
        //user delegates
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        resetVal()
        setQuestion()
        loadQuestion()
        submitbtn.isHidden = true
        flag = 0
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
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
    func resetVal(){
        
    questions = []
    answers = []
    category = []
    total = 0
    flag = 0
    mcount = 0
    scount = 0
    lcount = 0
    hcount = 0
    pcount = 0
    mtotal  = 0
    stotal  = 0
    ltotal = 0
    htotal = 0
    ptotal = 0
    
    }
    
    func hideButton(){
        sdbtn.isHidden = true
        dbtn.isHidden = true
        nbtn.isHidden = true
        abtn.isHidden = true
        sabtn.isHidden = true
        questionLabel.isHidden = true
        submitbtn.isHidden = false
        
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
        print("Total: \(total)")
        percenttotal = (Float(total)/25)*100
        delegate?.setResults(result: total)
        hideButton()
        let alert: SCLAlertViewResponder = SCLAlertView().showSuccess("79%", subTitle: "Addiction level")
        let alertv =  SCLAlertView()
        alert.setTitle("\(percenttotal)%") // Rename title
        alert.setSubTitle("View more about your addiction level") // Rename subtitle
        alertv.addButton("View More", target:self, selector:#selector(getter: PatientsQuestionsViewController.submitbtn))
        print("Total: \(percenttotal)")
    }
    
    func setQuestion(){
        
        //Category - MM (Mood Modification), S (Salience), LoC (Loss of Control), H (Harm), P (Physical)
        // Mood Modification
        questions.append("1. Do you avoid negative temper or feelings by playing games?")
        category.append("MM")
        
        questions.append("2. Do you play games to escape from your sorrows or get relief from bad feelings you might have?")
        category.append("MM")
        
        questions.append("3. Do you play games to forget about whatever’s bothering you?")
        category.append("MM")
        
        // Salience
        
        questions.append("4. Do you usually think about your next gaming session when you are not playing?")
        category.append("S")
        
        questions.append("5. Do you often lose sleep because of playing games?")
        category.append("S")
        
        questions.append("6. Do you think that gaming has become the most time consuming activity in your life?")
        category.append("S")
        
        questions.append("7. Have others unsuccessfully tried to reduce your time spent on games?")
        category.append("S")
        
        // Loss of Control
        
        questions.append("8. Did you try to stay of online but was not able to?")
        category.append("LoC")
        
        questions.append("9. Do you recognize feeling detached from time when being online?")
        category.append("LoC")
        
        questions.append("10. Do you lose interest in other hobbies because of your gaming?")
        category.append("LoC")
        
        
        // Harm
        
        questions.append("11. Did you catch yourself yelling at someone who told you that you were online too often or too long?")
        category.append("H")
        
        questions.append("12. Did your engagement in school / job lost in quality or productivity?")
        category.append("H")
        
        questions.append("13. Did you start to retract from important social contacts or family members since you started playing games?")
        category.append("H")
        
        questions.append("14. Have you had arguments with others (e.g. family, friends) over your time spent on games?")
        category.append("H")
        
        // Physical
        
        questions.append("15. Did you gain weight consistently after playing games due to continues eating while playing games?")
        category.append("P")
        
        questions.append("16. Do you experience any difficulties to stand longer and prefer to sit at one place and continue playing games?")
        category.append("P")
        
        questions.append("17. Did you experience back ache or muscle pain due to prolonged usage of keyboards?")
        category.append("P")
        
        questions.append("18. Do you have eye sight problems?")
        category.append("P")
        
        questions.append("19. Do you have any difficulties in hearing?")
        category.append("P")
        
        questions.append("20. Do you recognise yourself having lesser physical activity compared to before you started playing games?")
        category.append("P")
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "resultSegue" {
            let vc = segue.destination as! PatientsResultsViewController
            vc.total = Int(self.percenttotal)
            vc.delegate = self as? ResultDelegate
        }
    }
    
//    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
//        if let destination = segue.destination as? PatientsResultsViewController {
//            destination.delegate = self as! ResultDelegate
//        }
//    }


}
