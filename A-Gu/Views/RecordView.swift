//
//  Record.swift
//  A-Gu
//
//  Created by Sam on 2020/5/15.
//  Copyright © 2020 Sam. All rights reserved.
//

import SwiftUI

struct RecordView: View {
    @State private var showingRecordDietSheet = false
    @State private var showingRecordDiapersSheet = false
    @State private var showingRecordSleepSheet = false
    @State private var showingRecordVaccineSheet = false
    @State private var showingRecordGrowthDiarySheet = false
    @State private var showingRecordPhotoSheet = false

    
    var body: some View {
        ZStack {
            VStack {
                CalendarView()
                Spacer()
                //ScrollView(.horizontal, showsIndicators: false){
                        
                    HStack(spacing:20){
                        Button(action: {
                            self.showingRecordGrowthDiarySheet.toggle()
                        }) {
                            Record_Type_CardView(name: "成長日記")
                        }.sheet(isPresented: $showingRecordGrowthDiarySheet) {
                            Record_GrowthDiary()
                        }
                        
                        Button(action: {
                            self.showingRecordPhotoSheet.toggle()
                        }) {
                            Record_Type_CardView(name: "照片紀錄")
                        }.sheet(isPresented: $showingRecordPhotoSheet) {
                            Record_Photo()
                        }
                        
                    }
                    .frame(width: UIScreen.main.bounds.width)
                    .padding(.bottom,50)
                //}
            }
            Image("record_main")
                .overlay(
                    ZStack {
                        Button(action: {
                            self.showingRecordVaccineSheet.toggle()
                        }) {
                            Image(systemName: "plus.circle").resizable().frame(width: 45, height: 45).foregroundColor(Color("icon_color_selected")).background(Color.white).clipShape(Circle())
                        }.offset(x:-130,y:10)
                        .sheet(isPresented: $showingRecordVaccineSheet) {
                            Record_Vaccine()
                        }
                        
                        Button(action: {
                            self.showingRecordDietSheet.toggle()
                        }) {
                            Image(systemName: "plus.circle").resizable().frame(width: 45, height: 45).foregroundColor(Color("icon_color_selected")).background(Color.white).clipShape(Circle())
                        }.offset(x:-20,y:0)
                        .sheet(isPresented: $showingRecordDietSheet) {
                            Record_Diet()
                        }
                        
                        Button(action: {
                            self.showingRecordSleepSheet.toggle()
                        }) {
                            
                            Image(systemName: "plus.circle").resizable().frame(width: 45, height: 45).foregroundColor(Color("icon_color_selected")).background(Color.white).clipShape(Circle())
                        }.offset(x:100,y:50)
                        .sheet(isPresented: $showingRecordSleepSheet) {
                            Record_Sleep()
                        }
                        
                        Button(action: {
                            self.showingRecordDiapersSheet.toggle()
                        }) {
                            Image(systemName: "plus.circle").resizable().frame(width: 45, height: 45).foregroundColor(Color("icon_color_selected")).background(Color.white).clipShape(Circle())
                        }.offset(x:-60,y:150)
                        .sheet(isPresented: $showingRecordDiapersSheet) {
                            Record_Diapers()
                        }
                        
                    }
                )
            
        }
    }
}

struct Record_Type_CardView: View {
    @State var name:String
    var body: some View {
        RoundedRectangle(cornerRadius: 13)
            .fill(LinearGradient(gradient: Gradient(stops: [
                    .init(color: Color("icon_color_selected"), location: 0),
                    .init(color: Color("Color"), location: 1)]),
                        startPoint: UnitPoint(x: 0, y: 0),
                        endPoint: UnitPoint(x: 0, y: 1)))
            .frame(width: 160, height: 91)
        .overlay(
            Text(name).foregroundColor(Color.pink).font(.system(size:20))
        )
        
    }
}


struct Record_Previews: PreviewProvider {
    static var previews: some View {
        RecordView()
    }
}

struct Record_Diet: View {
    var body: some View {
        VStack {
            RoundedRectangle(cornerRadius: 13)
            .fill(LinearGradient(gradient: Gradient(stops: [
                    .init(color: Color("icon_color_selected"), location: 0),
                    .init(color: Color("Color"), location: 1)]),
                        startPoint: UnitPoint(x: 0, y: 0),
                        endPoint: UnitPoint(x: 0, y: 1)))
            .frame(width: 160, height: 91)
        }
    }
}

struct Record_Diapers: View {
    var body: some View {
        Text("Second View")
    }
}

struct Record_Sleep: View {
    var body: some View {
        Text("Second View")
    }
}

struct Record_Vaccine: View {
    var body: some View {
        Text("Second View")
    }
}

struct Record_GrowthDiary: View {
    var body: some View {
        VStack {
            Text("成長日記")
            Spacer()
        }
        
    }
}

struct Record_Photo: View {
    var body: some View {
        Text("Second View")
    }
}
