//
//  PatientInstructionsGridVieww.swift
//  A-Gu
//
//  Created by Sam on 2020/6/14.
//  Copyright © 2020 Sam. All rights reserved.
//

import SwiftUI

struct PatientInstructionsGridView: View {
    @State var gridData = [
        
    DataType(id: 0, rows: [row(id: 0, name: "Matcha Raspberry", pic: "r11", likes: "190"),row(id: 1, name: "Red Velvet", pic: "r12", likes: "98")]),

    DataType(id: 1, rows: [row(id: 0, name: "Cupcakes with Cream and Berries", pic: "r21", likes: "92"),row(id: 1, name: "Pistachio Macarons", pic: "r22", likes: "88")]),

    DataType(id: 2, rows: [row(id: 0, name: "Creamy Strawberry Tart", pic: "r31", likes: "32"),row(id: 1, name: "Delisious Cheesecake", pic: "r32", likes: "160")])
        
    ]
    
    var body: some View {
        VStack(spacing: 18){
            
            ForEach(gridData){i in
                
                HStack(spacing: 15){
                    
                    ForEach(i.rows){j in
                        
                        VStack(spacing: 20){
                            
                            Image(j.pic).resizable().frame(height: 200)
                            
                            HStack{
                                
                                Text(j.name)
                                
                                Spacer(minLength: 0)
                                
                            }.padding(.horizontal)
                            
                            HStack{
                                
                                Spacer()
                                
                                Text(j.likes)
                                
                                Button(action: {
                                    
                                }) {
                                    
                                    Image("heart").renderingMode(.original)
                                }
                            }.padding([.horizontal,.bottom])
                            
                        }.background(Color.white)
                        .cornerRadius(10)
                    }
                }
            }
            
        }.padding()
    }
}

struct PatientInstructionsGridVieww_Previews: PreviewProvider {
    static var previews: some View {
        PatientInstructionsGridView()
    }
}
