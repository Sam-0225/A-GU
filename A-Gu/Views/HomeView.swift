//
//  Home.swift
//  A-Gu
//
//  Created by Sam on 2020/5/15.
//  Copyright © 2020 Sam. All rights reserved.
//

import SwiftUI
import StepperView

struct HomeView: View {
//    let indicationTypes = [StepperIndicationType.custom(NumberedCircleView(text: "1")),
//    .custom(NumberedCircleView(text: "2")),
//    .custom(NumberedCircleView(text: "3")),
//    .custom(NumberedCircleView(text: "4")),
//    .custom(NumberedCircleView(text: "5"))]
//
//    let steps = [ Text("Cart").font(.caption),
//                  Text("Delivery Address").font(.caption),
//                  Text("Order Summary").font(.caption),
//                  Text("Payment Method").font(.caption),
//                  Text("Track").font(.caption)]

    @State var showImageName:String = "主畫面"
    @State var foodDetail = false
    @State var diaperDetail = false
    @State var sleepDetail = false
    var body: some View {
        Image(showImageName).resizable()
        .overlay(
            VStack {
                HStack {
                    Rectangle()
                        .fill(Color.red)
                        .opacity(0.001)
                    .frame(width: 250, height: 250)
                    .onTapGesture {
                            self.showImageName = "主畫面"
                    }
                    Rectangle()
                        .fill(Color.red)
                        .opacity(0.001)
                    .frame(width: 250, height: 250)
                    .onTapGesture {
                            self.showImageName = "主畫面2"
                    }
                }
                Button(action: {
                    self.foodDetail = true
                }) {
                Rectangle()
                .fill(Color.red)
                .opacity(0.001)
                .frame(width: UIScreen.main.bounds.width, height: 120)
                .offset(x:0, y:-10)
                
                }.sheet(isPresented: self.$foodDetail) {
                    FoodDetail()
                }
                
                Button(action: {
                    self.foodDetail = true
                }) {
                Rectangle()
                    .fill(Color.red)
                    .opacity(0.001)
                    .frame(width: UIScreen.main.bounds.width, height: 120)
                    .offset(x:0, y:0)
                    
                
                }.sheet(isPresented: self.$diaperDetail) {
                        DiaperDetail()
                }
                
                Button(action: {
                    self.foodDetail = true
                }) {
                Rectangle()
                    .fill(Color.red)
                    .opacity(0.001)
                    .frame(width: UIScreen.main.bounds.width, height: 120)
                    .offset(x:0, y:20)
                    
                
                }.sheet(isPresented: self.$sleepDetail) {
                        SleepDetail()
                }
                
                
                
                Spacer()
            }
                
        )
//            StepperView()
//            .addSteps(steps)
//            .indicators(indicationTypes)
//                .stepIndicatorMode(StepperMode.vertical)
//            .spacing(50)
//            .lineOptions(StepperLineOptions.custom(1, Colors.blue(.teal).rawValue))
        
    }
}

struct Home_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}

struct FoodDetail: View {

    var body: some View {
        Image("FoodDetail").resizable()
    }
    
}

struct DiaperDetail: View {

    var body: some View {
        Image("DiaperDetail").resizable()
    }
    
}

struct SleepDetail: View {

    var body: some View {
        Image("SleepDetail").resizable()
    }
    
}
