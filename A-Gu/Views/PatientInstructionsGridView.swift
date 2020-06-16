//
//  PatientInstructionsGridVieww.swift
//  A-Gu
//
//  Created by Sam on 2020/6/14.
//  Copyright © 2020 Sam. All rights reserved.
//

import SwiftUI

struct PatientInstructionsGridView: View {
    @State var t:String = "123"
    @State var gridData = [
        
    DataType(id: 0, rows: [row(id: 0, pic: "Action 1"),row(id: 1, pic: "Action 2")]),
    DataType(id: 1, rows: [row(id: 0, pic: "Action 3"),row(id: 1, pic: "Action 4")]),
    DataType(id: 2, rows: [row(id: 0, pic: "Action 5"),row(id: 1, pic: "Action 6")]),
    DataType(id: 3, rows: [row(id: 0, pic: "Action 7"),row(id: 1, pic: "Action add")])
        
    ]
      
    var body: some View {
        ScrollView(.vertical, showsIndicators: false){
        VStack(spacing: 18){
            ForEach(gridData){i in
                
                HStack(spacing: 15){
                    
                    ForEach(i.rows){j in
                        
                        VStack(spacing: 20){
                            Image(j.pic)
                                .resizable()
                                .frame(height: 244)
                                .onTapGesture{
                                    self.t = j.pic
                                    
                            }
                            

                        }
                        .background(Color.white)
                    }
                }
            }
            
        }.padding()
        }
    }
}

struct PatientInstructionsGridVieww_Previews: PreviewProvider {
    static var previews: some View {
        PatientInstructionsGridView()
    }
}
