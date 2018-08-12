//
//  Data.swift
//  illham
//
//  Created by Naelah on 13/08/2018.
//  Copyright © 2018 Ideate. All rights reserved.
//

class Data {
    
    var id: Int
    var doctor_id: Int
    var patient_id: Int
    var status: String?
    var result: String?
    var comment: String?
    
    init(id: Int, doctor_id: Int, patient_id: Int, status: String?, result: String?, comment: String? ){
        self.id = id
        self.doctor_id = doctor_id
        self.patient_id = patient_id
        self.status = status
        self.result = result
        self.comment = comment
    }
}
