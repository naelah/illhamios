//
//  PatientsAnswerViewController.swift
//  illham
//
//  Created by Naelah on 11/07/2018.
//  Copyright © 2018 Ideate. All rights reserved.
//

import UIKit

class PatientsAnswerViewController: UITableViewController {

    var questions:[String] = []
    var category:[String] = []
    var answers:[String] = []
    override func viewDidLoad() {
        super.viewDidLoad()
        setQuestion()

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 150
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return questions.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "patientAnsCell") as? PatientAnswerCell
        
        cell?.question.text = questions[indexPath.row]
        cell?.ans.text = answers[indexPath.row]
        
        return cell!
    }
    func setQuestion(){
        
        //Category - MM (Mood Modification), S (Salience), LoC (Loss of Control), H (Harm), P (Physical)
        // Mood Modification
        questions.append("1. Do you avoid negative temper or feelings by playing games?")
        category.append("MM")
        answers.append("Strongly Agree")
        
        questions.append("2. Do you play games to escape from your sorrows or get relief from bad feelings you might have?")
        category.append("MM")
        answers.append("Disagree")
        
        questions.append("3. Do you play games to forget about whatever’s bothering you?")
        category.append("MM")
        answers.append("Neutral")
        
        // Salience
        
        questions.append("4. Do you usually think about your next gaming session when you are not playing?")
        category.append("S")
        answers.append("Strongly Disagree")
        
        questions.append("5. Do you often lose sleep because of playing games?")
        category.append("S")
        answers.append("Agree")
        
        questions.append("6. Do you think that gaming has become the most time consuming activity in your life?")
        category.append("S")
        answers.append("Neutral")
        
        questions.append("7. Have others unsuccessfully tried to reduce your time spent on games?")
        category.append("S")
        answers.append("Strongly Disagree")
        
        // Loss of Control
        
        questions.append("8. Did you try to stay of online but was not able to?")
        category.append("LoC")
        answers.append("Agree")
        
        questions.append("9. Do you recognize feeling detached from time when being online?")
        category.append("LoC")
        answers.append("Strongly Agree")
        
        questions.append("10. Do you lose interest in other hobbies because of your gaming?")
        category.append("LoC")
        answers.append("Strongly Agree")
        
        
        // Harm
        
        questions.append("11. Did you catch yourself yelling at someone who told you that you were online too often or too long?")
        category.append("H")
        answers.append("Agree")
        
        questions.append("12. Did your engagement in school / job lost in quality or productivity?")
        category.append("H")
        answers.append("Strongly Agree")
        
        questions.append("13. Did you start to retract from important social contacts or family members since you started playing games?")
        category.append("H")
        answers.append("Agree")
        
        questions.append("14. Have you had arguments with others (e.g. family, friends) over your time spent on games?")
        category.append("H")
        answers.append("Strongly Agree")
        
        // Physical
        
        questions.append("15. Did you gain weight consistently after playing games due to continues eating while playing games?")
        category.append("P")
        answers.append("Strongly Agree")
        
        questions.append("16. Do you experience any difficulties to stand longer and prefer to sit at one place and continue playing games?")
        category.append("P")
        answers.append("Agree")
        
        questions.append("17. Did you experience back ache or muscle pain due to prolonged usage of keyboards?")
        category.append("P")
        answers.append("Agree")
        
        questions.append("18. Do you have eye sight problems?")
        category.append("P")
        answers.append("Strongly Agree")
        
        questions.append("19. Do you have any difficulties in hearing?")
        category.append("P")
        answers.append("Agree")
        
        questions.append("20. Do you recognise yourself having lesser physical activity compared to before you started playing games?")
        category.append("P")
        answers.append("Strongly Agree")
    }
    

}
