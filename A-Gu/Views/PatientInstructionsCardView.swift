//
//  PatientInstructionsCardView.swift
//  A-Gu
//
//  Created by Sam on 2020/6/14.
//  Copyright © 2020 Sam. All rights reserved.
//

import SwiftUI

struct PatientInstructionsCardView: View {
    @State var rowData = [
        
    row(id: 0, name: "皮膚", pic: "skin"),
    row(id: 1, name: "呼吸道系統", pic: "respiratory"),
    row(id: 2, name: "消化道系統", pic: "Digestive"),
    row(id: 3, name: "副食品須知", pic: "Solid-food"),
    row(id: 4, name: "母奶", pic: "breast")
        
    ]
    
    var body: some View {
        ScrollView(.vertical, showsIndicators: false){
            VStack(spacing: 18){
                
                 ForEach(rowData){i in
                    
                    VStack{
                        
                        Image(i.pic)
                        
                    }.background(Color.white)
                    .cornerRadius(10)
                }
                
            }
        }
        
    }
}

struct PatientInstructionsCardView_Previews: PreviewProvider {
    static var previews: some View {
        PatientInstructionsCardView()
    }
}
