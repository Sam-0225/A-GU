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
    let indicationTypes = [StepperIndicationType.custom(NumberedCircleView(text: "1")),
    .custom(NumberedCircleView(text: "2")),
    .custom(NumberedCircleView(text: "3")),
    .custom(NumberedCircleView(text: "4")),
    .custom(NumberedCircleView(text: "5"))]

    let steps = [ Text("Cart").font(.caption),
                  Text("Delivery Address").font(.caption),
                  Text("Order Summary").font(.caption),
                  Text("Payment Method").font(.caption),
                  Text("Track").font(.caption)]

    
    var body: some View {

            StepperView()
            .addSteps(steps)
            .indicators(indicationTypes)
                .stepIndicatorMode(StepperMode.vertical)
            .spacing(50)
            .lineOptions(StepperLineOptions.custom(1, Colors.blue(.teal).rawValue))
    }
}

struct Home_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}

