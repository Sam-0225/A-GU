//
//  PatientInstructionsModel.swift
//  A-Gu
//
//  Created by Sam on 2020/6/14.
//  Copyright © 2020 Sam. All rights reserved.
//

import Foundation

struct DataType : Identifiable {
    
    var id : Int
    var rows : [row]
}

struct row : Identifiable {
    
    var id : Int
    var name : String?
    var pic : String
}
    



