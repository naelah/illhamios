//
//  Result.swift
//  illham
//
//  Created by Naelah on 13/08/2018.
//  Copyright © 2018 Ideate. All rights reserved.
//

class Result {
    
    var id: Int
    var result_name: String?
    var result_desc: String?
    var range_from: Float
    var range_to: Float
    
    init(id: Int, result_name: String?, result_desc: String?, range_from: Float, range_to: Float ){
        self.id = id
        self.result_name = result_name
        self.result_desc = result_desc
        self.range_from = range_from
        self.range_to = range_to
        
    }
}
