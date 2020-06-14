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
    var name : String
    var pic : String
    var likes : String
}
    


var rowData = [
    
row(id: 0, name: "Matcha Raspberry ", pic: "r11", likes: "190"),
row(id: 1, name: "Red Velvet", pic: "r12", likes: "98"),

row(id: 2, name: "Cupcakes with Cream and Berries", pic: "r21", likes: "92"),
row(id: 3, name: "Pistachio Macarons", pic: "r22", likes: "88"),

row(id: 4, name: "Creamy Strawberry Tart", pic: "r31", likes: "32"),
row(id: 5, name: "Delisious Cheesecake", pic: "r32", likes: "160")
    
]
