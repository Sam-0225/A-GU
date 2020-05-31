//
//  Setting.swift
//  A-Gu
//
//  Created by Sam on 2020/5/15.
//  Copyright © 2020 Sam. All rights reserved.
//

import SwiftUI

struct Setting: View {
    @State var showingDetail1 = false
    @State var showingDetail2 = false
    @State var nightModeToggle = false
    @State var showingDetail4 = false
    @State var showingDetail5 = false
    
    var body: some View {
        ZStack{
            VStack {
                Rectangle()
                .fill(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                .frame(width: 414, height: 192)
                .clipShape(Curve_setting())
                Spacer()
            }
            VStack{
                ZStack {
                    Text("Settings")
                        .font(.system(size: 22))
                        .fontWeight(.semibold)
                    HStack {
                        Spacer()
                        Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/) {
                            Text("logout")
                                .fontWeight(.semibold)
                                .foregroundColor(Color(red: 0.375, green: 0.55, blue: 1, opacity: 1.0))
                                .padding(.trailing, 20)
                        }
                        
                    }
                    
                }
                Image("avatar")
                           .resizable()
                           .aspectRatio(contentMode: .fill)
                           .clipShape(RoundedRectangle(cornerRadius: 1000))
                           .frame(width: 140, height: 140)
                            .overlay(
                                Circle().stroke(Color(#colorLiteral(red: 1, green: 0.6941176471, blue: 0.6862745098, alpha: 1)), lineWidth: 4))
                           .shadow(color: Color(#colorLiteral(red: 0, green: 0, blue: 0, alpha: 0.25)), radius:20, x:4, y:4)
                    .padding(.top, 60)

                GeometryReader { geometry in
                    VStack {
                        Rectangle()
                           .fill(Color.white)
                        .frame(width: geometry.size.width-30, height: geometry.size.height-50)
                           .cornerRadius(20)
                            .shadow(radius: 20)
                            .padding(.top, 5)
                            .overlay(VStack{
                                Button(action: {
                                    self.showingDetail1.toggle()
                                }) {
                                   BtnView(image: "person.crop.circle", name: "帳戶管理")
                                   .padding(.top)
                                }.sheet(isPresented: self.$showingDetail1) {
                                    Detail1()
                                }
                                
                                Button(action: {
                                    self.showingDetail2.toggle()
                                }) {
                                   BtnView(image: "bell", name: "通知管理")
                                }.sheet(isPresented: self.$showingDetail2) {
                                    Detail2()
                                }
                                
                                
                                Toggle(isOn: self.$nightModeToggle){
                                   BtnView(image: "moon.circle", name: "夜間模式",detailOrToggle: true)
                                }.padding(.trailing)
                                
                                Button(action: {
                                    self.showingDetail4.toggle()
                                }) {
                                   BtnView(image: "lock.shield", name: "進階設定")
                                }.sheet(isPresented: self.$showingDetail4) {
                                    Detail4()
                                }
                               
                                Button(action: {
                                    self.showingDetail5.toggle()
                                }) {
                                    BtnView(image: "smiley", name: "關於我們")
                                }.sheet(isPresented: self.$showingDetail5) {
                                    Detail5()
                                }
                                Spacer()
                                
                            })
                        Spacer()
                    }
                }
            }
            
           
        }
        .background(Color("Color"))
        .edgesIgnoringSafeArea(.bottom)
        
    }
}

struct Setting_Previews: PreviewProvider {
    static var previews: some View {
        Detail1()
    }
}

struct Curve_setting : Shape {

    func path(in rect: CGRect) -> Path {
        
        return Path{path in
            
            path.move(to: CGPoint(x: 0, y: 0))
            path.addLine(to: CGPoint(x: rect.width, y: 0))
            path.addLine(to: CGPoint(x: rect.width, y: rect.height-30))
            path.addQuadCurve(to: CGPoint(x: rect.width/2, y: 192), control: CGPoint(x: rect.width/2+80, y: 200))
            path.addQuadCurve(to: CGPoint(x: 0, y: 0), control: CGPoint(x: -30, y: 110))
        }
    }
}



struct BtnView: View {
    
    var image = ""
    var name = ""
    var detailOrToggle:Bool? = nil
    
    var body: some View {
        HStack {
           Image(systemName:image)
               
               .padding(10)
               .frame(width: 35,height:35)
               .background(LinearGradient(gradient: Gradient(colors: [Color.white, Color(red: 255/255, green: 207/255, blue: 207/255), Color(red: 255/255, green: 161/255, blue: 161/255)]), startPoint: .topLeading, endPoint: .bottomTrailing))
           
               .clipShape(Circle())
               
               .foregroundColor(.white)
           
               
           Text(name).foregroundColor(.black)
           
           Spacer()
            if detailOrToggle == nil{
                Image(systemName: "chevron.right")
                .foregroundColor(.black)
            }
            
           
           
       }
       .padding(.all)
       .font(.system(size: 18))
        
    }
    
}

struct Detail1: View {
    @State var data = [
        Card(image: "avatar-baby1", cardColor: "Card_Color1", name: "蔡桃貴", year: "2018"),
        Card(image: "avatar-baby2", cardColor: "Card_Color2", name: "蔡波能", year: "2020"),
        Card(image: "avatar-baby3", cardColor: "Card_Color3", name: "桃~貴", year: "2018"),
        Card(image: "avatar-baby-plus", cardColor: "Card_Color1", name: "你的寶貝", year: "2020")
    ]
    @State var tap1:Bool = false
    @State var tap2:Bool = false
    @State var tap3:Bool = false
    @State var tap4:Bool = false
    var body: some View {
        ZStack {
            VStack(spacing:0) {
                RoundedRectangle(cornerRadius: 30)
                .fill(LinearGradient(
                        gradient: Gradient(stops: [
                    .init(color: Color(#colorLiteral(red: 0.9960784316062927, green: 0.9137254953384399, blue: 0.9176470637321472, alpha: 1)), location: 0),
                    .init(color: Color(#colorLiteral(red: 0.9960784316062927, green: 0.9137254953384399, blue: 0.9176470637321472, alpha: 0)), location: 1)]),
                        startPoint: UnitPoint(x: 0.4999999960630812, y: 0.9999998774183406),
                        endPoint: UnitPoint(x: 0.49999999552018487, y: -3.372384038691223e-9)))
                    .frame(width: 414, height: 248)
                RoundedRectangle(cornerRadius: 10)
                .fill(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                .frame(width: 300, height: 80)
                .shadow(color: Color(#colorLiteral(red: 0, green: 0, blue: 0, alpha: 0.25)), radius:4, x:0, y:2)
                    .offset(x: 0, y: -80/2)
                    .overlay(HStack(spacing: 35){
                        VStack {
                            Text("登入次數").font(.system(size: 12, weight: .semibold)).foregroundColor(Color(#colorLiteral(red: 0.6509804129600525, green: 0.6666666865348816, blue: 0.7058823704719543, alpha: 1))).multilineTextAlignment(.center).padding(.bottom, 5)
                            Text("25").font(.system(size: 20, weight: .semibold)).multilineTextAlignment(.center)
                        }
                        Divider()
                        .padding()
                        VStack {
                            Text("獎勵勳章").font(.system(size: 12, weight: .semibold)).foregroundColor(Color(#colorLiteral(red: 0.6509804129600525, green: 0.6666666865348816, blue: 0.7058823704719543, alpha: 1))).multilineTextAlignment(.center)
                            .padding(.bottom, 5)
                            Text("5").font(.system(size: 20, weight: .semibold)).multilineTextAlignment(.center)
                        }
                        
                        
                    }.offset(x: 0, y: -80/2))
                ScrollView(.vertical, showsIndicators: false){
                    VStack {
                        profileView(title: "Name", content: "超級奶爸")
                        profileView(title: "Email", content: "nightbar@gmail.com")
                        profileView(title: "Status", content: "孩子的爸")
                        ScrollView(.horizontal, showsIndicators: false){
                            
                            HStack(spacing:20){
                                
                                ForEach(self.data){ i in
                                    GeometryReader{ geometry in
                                        CardView(d: i)
                                            .rotation3DEffect(Angle(degrees: (Double(geometry.frame(in: .global).minX)-35) / -25), axis: (x: 0, y: 10.0, z: 0))
                                            .onTapGesture{
                                                if i.id == 0 {
                                                    
                                                }
                                            }
                                    }.frame(width: 180, height:250)
                                    
                                }
                                
                                
                            }
                            
                            
                        }
                        .frame(width: UIScreen.main.bounds.width, height:250)
                        .padding(.leading, 35)
                        
                    }
                }.animation(.spring())
                
                
                
                
                Spacer()
            }
            VStack {
                Image("avatar")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 130, height: 130)
                    .clipShape(RoundedRectangle(cornerRadius: 1000))
                    .shadow(color: Color(#colorLiteral(red: 0, green: 0, blue: 0, alpha: 0.25)), radius:4, x:4, y:4)
                    .overlay(Circle()
                        .stroke(Color(#colorLiteral(red: 1, green: 0.6941176652908325, blue: 0.686274528503418, alpha: 1)), style: StrokeStyle(lineWidth: 2, lineCap: .round,  dash: [13, 35]))
                        .frame(width: 150, height: 150)
                        .overlay(Image("camera")
                            .frame(width: 24, height: 24)
                            .padding(10)
                            .background(Color(#colorLiteral(red: 1, green: 0.6941176652908325, blue: 0.686274528503418, alpha: 1)))
                            .clipShape(Circle())
                            .position(x: 150*9/11, y: 150-15)
                        )
                ).padding(.all, 25)
                
                
                Spacer()
                
                
            }
        }
        
    }
    
}

struct Detail2: View {

    var body: some View {
        Text("")
    }
    
}

struct Detail4: View {

    var body: some View {
        Text("")
    }
    
}

struct Detail5: View {

    var body: some View {
        Text("")
    }
    
}



struct CardView: View {
    var d:Card
    
    var body: some View {
        RoundedRectangle(cornerRadius: 10)
            .fill(Color(d.cardColor)).overlay(
                VStack {
                    Image(d.image)
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width:180,height: 110)
                        .clipped()
                    Spacer()
                    HStack {
                        VStack(alignment: .leading) {
                            Text(d.name)
                                .font(.title)
                                .fontWeight(.black)
                                .foregroundColor(.primary)
                                .lineLimit(3)
                            Text(d.year.uppercased())
                                .font(.callout)
                                .foregroundColor(.secondary)
                        }
                        .layoutPriority(100)
                        Spacer()
                    }
                    .padding(.bottom, 10)
                    .padding(.leading, 10)
                }
                
                
        )
        .frame(width:180,height: 230)
        .cornerRadius(10)
        .overlay(
            
            RoundedRectangle(cornerRadius: 10)
                .stroke(Color(d.cardColor+"-Border"), lineWidth: 1)
            
        )
        
        
    }
    
}


