//
//  Patient_Instructions.swift
//  A-Gu
//
//  Created by Sam on 2020/5/15.
//  Copyright © 2020 Sam. All rights reserved.
//

import SwiftUI

struct Patient_InstructionsView: View {
    
    @State var leftPercent: CGFloat = 0
    
    var body: some View {
        ZStack{
            NavigationView{
                GeometryReader{ geometry in
                    HScrollViewController(pageWidth: geometry.size.width,
                                          contentSize: CGSize(width: geometry.size.width * 2, height: geometry.size.height),
                                          leftPercent: self.$leftPercent){
                        HStack(spacing: 0) {
                            PatientInstructionsCardView()
                            .frame(width: UIScreen.main.bounds.width)

                            PatientInstructionsGridView()
                            .frame(width: UIScreen.main.bounds.width)


                        }
                    }
                    
                }.edgesIgnoringSafeArea(.bottom)
                .navigationBarItems(leading: Spacer())
            }.navigationViewStyle(StackNavigationViewStyle())
                .padding(.top)
            VStack {
                PatientInstructionsNavigationBar(leftPercent: leftPercent).padding()
                Spacer()
            }
        }
        
    }
}

struct Patient_Instructions_Previews: PreviewProvider {
    static var previews: some View {
        Patient_InstructionsView()
    }
}
