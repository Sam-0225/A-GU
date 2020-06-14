//
//  CalendarView.swift
//  A-Gu
//
//  Created by Sam on 2020/6/12.
//  Copyright © 2020 Sam. All rights reserved.
//

import SwiftUI
import FSCalendar

struct CalendarView: UIViewRepresentable {
    
    
    typealias UIViewType = FSCalendar
    
    class Coordinator: NSObject, FSCalendarDataSource, FSCalendarDelegate {
        
    }
    
    func makeCoordinator() -> Coordinator {
        Coordinator()
    }
    func makeUIView(context: Context) -> FSCalendar {
        let calendar = FSCalendar()
        calendar.dataSource = context.coordinator
        calendar.delegate = context.coordinator
        calendar.scope = .week
        return calendar
    }
    
    func updateUIView(_ uiView: FSCalendar, context: Context) {
        
    }
}



struct CalendarView_Previews: PreviewProvider {
    static var previews: some View {
        CalendarView()
    }
}
