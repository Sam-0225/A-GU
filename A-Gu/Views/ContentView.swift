//
//  ContentView.swift
//  A-Gu
//
//  Created by Sam on 2020/5/8.
//  Copyright © 2020 Sam. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    @State var index = 0
    
    var body: some View {
        VStack(spacing: 0){
            GeometryReader { geometry in
                if self.index  == 0{
                    Home()
                }else if self.index == 1{
                    Discussion()
                }else if self.index == 2{
                    Patient_Instructions()
                }else if self.index == 3{
                    Setting()
                }else if self.index == 4{
                    Record()
                }
            }
            TabBar(index: self.$index)
            
        }
        .edgesIgnoringSafeArea(.bottom)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct TabBar : View {
    
    @Binding var index : Int
    
    var body : some View{
        ZStack(alignment: .top){
            HStack(){
                
                Button(action: {
                    
                    self.index = 0
                    
                }) {
                    
                    Image("Tab One")
                        .foregroundColor(self.index == 0 ? Color("icon_color_selected") : Color("icon_color_unselected"))
                }
                Spacer(minLength: 12)
                Button(action: {
                    
                    self.index = 1
                    
                }) {
                    
                    Image("Tab Two")
                        .foregroundColor(self.index == 1 ? Color("icon_color_selected") : Color("icon_color_unselected"))
                }
                Spacer().frame(width: 100)
                Button(action: {
                    
                    self.index = 2
                    
                }) {
                    
                    Image("Tab Four")
                        .foregroundColor(self.index == 2 ? Color("icon_color_selected") : Color("icon_color_unselected"))
                }
                Spacer(minLength: 12)
                Button(action: {
                    
                    self.index = 3
                    
                }) {
                    
                    Image("Tab Five")
                        .foregroundColor(self.index == 3 ? Color("icon_color_selected") : Color("icon_color_unselected"))
                }
            }
            .padding(.horizontal, 30)
            .padding(.bottom, 30)
            .padding(.top, 28)
            .background(Color.white)
            .clipShape(Curve())
            .shadow(radius: 10, y:10)
            Button(action: {
                self.index = 4
            }) {
                
                Image("record").renderingMode(.original).padding(18)
                
            }.background(Color("icon_color_selected"))
            .clipShape(Circle()).frame(width: 56, height: 56)
            .offset(y: -30)
            .shadow(color: Color(#colorLiteral(red: 0.3803921639919281, green: 0.24313725531101227, blue: 0.9176470637321472, alpha: 0.5)), radius:14, x:0, y:4)
        }
    }
}

struct Curve : Shape {

    func path(in rect: CGRect) -> Path {
        
        return Path{path in
            
            path.move(to: CGPoint(x: 0, y: 0))
            path.addLine(to: CGPoint(x: 0, y: rect.height))
            path.addLine(to: CGPoint(x: rect.width, y: rect.height))
            path.addLine(to: CGPoint(x: rect.width, y: 0))
            
            path.addArc(center: CGPoint(x: rect.width/2, y: 0), radius: 36, startAngle: .zero, endAngle: .init(degrees: 180), clockwise: false)
        }
    }
}



