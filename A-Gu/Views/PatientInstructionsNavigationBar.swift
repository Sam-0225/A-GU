//
//  PatientInstructionsNavigationBar.swift
//  A-Gu
//
//  Created by Sam on 2020/6/14.
//  Copyright © 2020 Sam. All rights reserved.
//

import SwiftUI


private let kLabelWidth: CGFloat = 100
private let kLabelHeight: CGFloat = 24

struct PatientInstructionsNavigationBar: View {
    @State var leftPercent: CGFloat
    @State var show = false
    @State var txt = ""
    var body: some View {
        VStack(alignment:.leading,spacing: 20){
            HStack {
                if !self.show{
                    
                     Text("衛教資訊")
                     .bold()
                     .font(.title)
                }
                
                Spacer(minLength: 0)
                
                HStack{
                    
                    if self.show{
                        
                        Image("search").padding(.horizontal, 8)
                        
                        TextField("Search ...", text: self.$txt)
                        
                        Button(action: {
                            
                            withAnimation {
                                
                                self.txt = ""
                                self.show.toggle()
                            }
                            
                        }) {
                            
                            Image(systemName: "xmark").foregroundColor(Color("icon_color_selected"))
                        }
                        .padding(.horizontal, 8)
                        
                    }
                    
                    else{
                        
                        Button(action: {
                            
                            withAnimation {
                                
                                self.show.toggle()
                            }
                            
                        }) {
                            
                            Image("search").foregroundColor(Color("icon_color_selected")).padding(10)
                            
                        }
                    }
                }
                .padding(self.show ? 10 : 0)
                .cornerRadius(20)
            }
                
            HStack(alignment:.top, spacing: 0){
                Spacer()
                VStack(spacing: 3) {
                    HStack(spacing: 0){
                        Text("貼心分類")
                            .bold()
                            .frame(width: kLabelWidth, height: kLabelHeight)
                            .padding(.top, 5)
                            .opacity(Double(1 - leftPercent * 0.5))
                            .onTapGesture {
                                withAnimation {
                                    self.leftPercent = 0
                                }
                        }
                        
                        
                        Spacer()
                        
                        Text("手冊總覽")
                            .bold()
                            .frame(width: kLabelWidth, height: kLabelHeight)
                            .padding(.top, 5)
                            .opacity(Double(0.5 + leftPercent * 0.5))
                            .onTapGesture {
                                    withAnimation {
                                        self.leftPercent = 1
                                    }
                            }
                            
                    }.font(.system(size: 20))
                    
                    GeometryReader{ geometry in
                        RoundedRectangle(cornerRadius: 2)
                            .foregroundColor(Color("icon_color_selected"))
                            .frame(width: 90, height: 3)
                            .offset(x: geometry.size.width * (self.leftPercent - 0.5) + kLabelWidth * (0.5 - self.leftPercent))
                        
                    }.frame(height: 6)
                    
                }
                .frame(width: UIScreen.main.bounds.width * 0.7)
                Spacer()
            }
        }
        .padding(.leading, 40)
        .padding(.trailing, 40)
    }
}

struct PatientInstructionsNavigationBar_Previews: PreviewProvider {
    static var previews: some View {
        PatientInstructionsNavigationBar(leftPercent: 0)
    }
}
