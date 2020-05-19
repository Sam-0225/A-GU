//
//  Home.swift
//  A-Gu
//
//  Created by Sam on 2020/5/15.
//  Copyright © 2020 Sam. All rights reserved.
//

import SwiftUI

struct Home: View {
    var body: some View {

            VStack{
                Rectangle()
                    .fill(LinearGradient(gradient: Gradient(colors: [ Color(red: 221/255, green: 98/255, blue: 145/255), Color(red: 93/255, green: 151/255, blue: 245/255)]), startPoint: .topLeading, endPoint: .bottomTrailing))
                    .frame(width:UIScreen.main.bounds.size.width,height:UIScreen.main.bounds.size.height/4)
                    .edgesIgnoringSafeArea(.top)
                   
                Spacer()
                Text("待開發首頁")
                Spacer()
                Text("END")
            }
    }
}

struct Home_Previews: PreviewProvider {
    static var previews: some View {
        Home()
    }
}

