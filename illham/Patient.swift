//
//  Patients.swift
//  illham
//
//  Created by Naelah on 13/08/2018.
//  Copyright © 2018 Ideate. All rights reserved.
//

import Foundation

class Patient {
    
    var id: Int
    var patient_id: Int
    var age: Int
    var ic: String?
    var examed_at: Date
    var gender: String?
    var address: String?
    var updated_at: Date
    
    init(id: Int, patient_id: Int, age: Int, ic: String?, examed_at: Date, gender: String?, address: String?, updated_at: Date ){
        self.id = id
        self.patient_id = patient_id
        self.age = age
        self.ic = ic
        self.examed_at = examed_at
        self.gender = gender
        self.address = address
        self.updated_at = updated_at
    }
}
