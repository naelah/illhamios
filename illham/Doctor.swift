//
//  Doctor.swift
//  illham
//
//  Created by Naelah on 13/08/2018.
//  Copyright © 2018 Ideate. All rights reserved.
//

class Doctor {
    
    var id: Int
    var staff_id: String?
    var name: String?
    var job_title: String?
    var department: String?
    var username: String?
    var password: String?
    
    init(id: Int, staff_id: String?, name: String?, job_title: String?, department: String?, username: String?, password: String? ){
        self.id = id
        self.staff_id = staff_id
        self.name = name
        self.job_title = job_title
        self.department = department
        self.username = username
        self.password = password
    }
}
