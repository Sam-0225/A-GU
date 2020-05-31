//
//  profileView.swift
//  A-Gu
//
//  Created by Sam on 2020/5/28.
//  Copyright © 2020 Sam. All rights reserved.
//

import SwiftUI

struct profileView: View {
    var title = ""
    var content:String? = nil
    
    var body: some View {
        HStack {
               
            Text(title)
            Spacer()
            if content != nil{
                Text(content!)
                Image(systemName: "chevron.right")
            }
       }
        .foregroundColor(Color(#colorLiteral(red: 0.3583333194255829, green: 0.35385414958000183, blue: 0.35385414958000183, alpha: 1)))
        .padding(.leading,35)
        .padding(.trailing,35)
        .font(.system(size: 18))
        
    }
}

struct profileView_Previews: PreviewProvider {
    static var previews: some View {
        profileView(title: "Name", content: "超級奶爸")
    }
}
