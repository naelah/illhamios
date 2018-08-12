//
//  Question.swift
//  illham
//
//  Created by Naelah on 13/08/2018.
//  Copyright © 2018 Ideate. All rights reserved.
//

class Question {
    
    var id: Int
    var question: String?
    var status: String?
    
    init(id: Int, question: String?, status: String?){
        self.id = id
        self.question = question
        self.status = status
    }
}
