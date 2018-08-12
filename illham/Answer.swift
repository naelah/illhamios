//
//  Answer.swift
//  illham
//
//  Created by Naelah on 13/08/2018.
//  Copyright © 2018 Ideate. All rights reserved.
//

class Answer {
    
    var id: Int
    var question_id: Int
    var data_id: Int
    var answer: String?
    
    init(id: Int, question_id: Int, data_id: Int, answer: String?){
        self.id = id
        self.question_id = question_id
        self.data_id = data_id
        self.answer = answer
    }
}

