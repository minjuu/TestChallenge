//
//  ListView.swift
//  TestChallenge
//
//  Created by 강민주 on 2021/10/08.
//

import SwiftUI

struct Actor : Identifiable {
    let id = UUID()
    let actorImg : String
    let actorName: String
}
var actors = [
    Actor(actorImg: "midnight", actorName: "George Clooney"),
    Actor(actorImg: "midnight", actorName: "George Clooney"),
    Actor(actorImg: "midnight", actorName: "George Clooney"),
    Actor(actorImg: "midnight", actorName: "George Clooney"),
    Actor(actorImg: "midnight", actorName: "George Clooney"),
]

struct Review : Identifiable {
    let id = UUID()
    let review : String
    let name : String
}
var reviews = [
    Review(review: "As I'm writing this review, Darth Vader's theme music begins to build in my mind...", name: "Cat Ellington"),
    Review(review: "A long time ago in a childhood not too far away...", name: "Jhon Chard"),
    Review(review: "Star Wars (1977) is a true masterpiece of cinema, and is definitely one of ...", name: "gastyny"),
]


struct DetailView: View {
    var body: some View {
        GeometryReader { geometry in
                ZStack {
                    Image("midnight")
                        .resizable()
                        .aspectRatio(geometry.size, contentMode: .fit)
                        .edgesIgnoringSafeArea(.all)
                        Color.black.opacity(0.6)
                        
                }
            
            VStack(alignment: .leading){
                Button(action: {
                            // 버튼 액션
                        }) {
                Text("")
                    .padding(.bottom, 150)
                ScrollView(.vertical) {
                    HStack (spacing: 20){
                        Image("midnight")
                            .resizable()
                            .frame(width:124.8, height:191.004)
                            .aspectRatio(contentMode: .fit)
                            .cornerRadius(10)
                                    .overlay(RoundedRectangle(cornerRadius: 8)
                                        .stroke(Color(#colorLiteral(red: 0.8979505897, green: 0.8981012702, blue: 0.8979307413, alpha: 1)), lineWidth: 1))
                                    .shadow(radius: 1)
                        
                        VStack(alignment: .leading) {
                            Text("미드나이트 스카이")
                                
                            Text("  Adult  ")
                                .font(.custom("NotoSansKR-Medium", size: 10))
                                .foregroundColor(.red)
                                .padding(3)
                                .overlay(
                                            RoundedRectangle(cornerRadius: 2)
                                                .stroke(Color.red, lineWidth: 2)
                                        )
                            Text("Action, Drama")
                                .font(.custom("NotoSansKR-Regular", size: 13))
                                .frame(width:116, alignment: .leading)
                                .foregroundColor(Color(#colorLiteral(red: 0.6039215686, green: 0.6039215686, blue: 0.6039215686, alpha: 1)))
                            
                            Text("2020-12-10 발매")
                                .font(.custom("NotoSansKR-Regular", size: 13))
                                .frame(width:116, alignment: .leading)
                                .foregroundColor(Color(#colorLiteral(red: 0.6039215686, green: 0.6039215686, blue: 0.6039215686, alpha: 1)))
                            
                            HStack(spacing: -5) {
                                Stars()
                                    .frame(width:90, alignment: .leading)
                                    
                                Text("9.2")
                                    .font(.custom("NotoSansKR-Bold", size: 14))
                                    .foregroundColor(Color(#colorLiteral(red: 0.9450980392, green: 0.7764705882, blue: 0.2666666667, alpha: 1)))
                            }
                            
                        }
                        .padding(.trailing, 80)
                    }
                    .frame(width: geometry.size.width, alignment: .leading)
                    .padding(20)
                    .padding(.leading, 60)
                    
                    VStack(alignment: .leading) {
                        VStack(alignment: .leading, spacing: 16){
                            Text("개요")
                                .font(.custom("NotoSansKR-Bold", size: 25))
                                .padding(.bottom, 10)
                            
                            Text("종말을 맞이한 지구, 북극에는 외로운 과학자 오거스틴이 살아있다. 오거스틴은 탐사를 마치고 귀환하던 중 지구와 연락이 끊긴 우주 비행사 설리가 짧은 교신에 성공한다. 그는 설리와 그녀의 동료 우주 비행사들이 원인 불명의 재앙을 맞은 지구로 귀환하는 것을 막고자 분투하는데...")
                                .font(.custom("NotoSansKR-Regular", size: 19))
                                .foregroundColor(Color(#colorLiteral(red: 0.5098039216, green: 0.5098039216, blue: 0.5098039216, alpha: 1)))
                                .frame(width: geometry.size.width-40)
                        }
                    }
                    .padding(.top, 15)
                    
                    VStack(alignment: .leading) {
                        VStack(alignment: .leading, spacing: 16){
                            Text("주요 출연진")
                                .font(.custom("NotoSansKR-Bold", size: 25))
                                .padding(.bottom, 10)
                            
                            VStack {
                                ScrollView(.horizontal, showsIndicators: false) {
                                    HStack(alignment:.center) {
                                        ForEach(actors) {
                                            actor in ActorView(actor: actor)
                                        }
                                    }
                                }
                                .padding(.bottom,30)
                                .padding(.leading, 10)
                            }
                        }
                    }
                    .padding(.top, 15)
                    .padding(.leading, 70)
                    
                    
                        HStack(){
                            Text("리뷰")
                                .font(.custom("NotoSansKR-Bold", size: 25))
                                .padding(.bottom, 10)
                                .frame(width: geometry.size.width, alignment: .leading)
                                .padding(.leading, 40)
                            
                            
                        }
                    
                    VStack(alignment: .leading) {
                        VStack(alignment: .leading, spacing: 0){
                            VStack(alignment: .center) {
                                ScrollView(showsIndicators: false) {
                                        ForEach(reviews) {
                                            review in ReviewView(review: review)
                                        }
                                }
                                .padding(.bottom,30)
                                
                            }
                        }
                    }
                    .padding(.top, 15)
                    .padding(.leading, -187)
                }
                .frame(width: geometry.size.width)
                .background(RoundedCorners(color: .white, tl: 16, tr: 16, bl: 0, br: 0))
                .padding(.leading, -10)
                }
        }
    }
}


struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView()
    }
}

struct RoundedCorners: View {
    var color: Color = .white
    var tl: CGFloat = 0.0
    var tr: CGFloat = 0.0
    var bl: CGFloat = 0.0
    var br: CGFloat = 0.0
    
    var body: some View {
        GeometryReader { geometry in
            Path { path in
                
                let w = geometry.size.width
                let h = geometry.size.height

                // Make sure we do not exceed the size of the rectangle
                let tr = min(min(self.tr, h/2), w/2)
                let tl = min(min(self.tl, h/2), w/2)
                let bl = min(min(self.bl, h/2), w/2)
                let br = min(min(self.br, h/2), w/2)
                
                path.move(to: CGPoint(x: w / 2.0, y: 0))
                path.addLine(to: CGPoint(x: w - tr, y: 0))
                path.addArc(center: CGPoint(x: w - tr, y: tr), radius: tr, startAngle: Angle(degrees: -90), endAngle: Angle(degrees: 0), clockwise: false)
                path.addLine(to: CGPoint(x: w, y: h - br))
                path.addArc(center: CGPoint(x: w - br, y: h - br), radius: br, startAngle: Angle(degrees: 0), endAngle: Angle(degrees: 90), clockwise: false)
                path.addLine(to: CGPoint(x: bl, y: h))
                path.addArc(center: CGPoint(x: bl, y: h - bl), radius: bl, startAngle: Angle(degrees: 90), endAngle: Angle(degrees: 180), clockwise: false)
                path.addLine(to: CGPoint(x: 0, y: tl))
                path.addArc(center: CGPoint(x: tl, y: tl), radius: tl, startAngle: Angle(degrees: 180), endAngle: Angle(degrees: 270), clockwise: false)
                path.closeSubpath()
            }
            .fill(self.color)
        }
    }
}

struct ActorView: View {
    let actor : Actor
    var body: some View {
        VStack(alignment: .center){
            VStack(alignment: .center){
                Image(actor.actorImg)
                    .resizable()
                    .frame(width:70, height:70)
                    .aspectRatio(contentMode: .fit)
                    .cornerRadius(100)
                    
                    
                VStack(alignment: .center) {
                    Text(actor.actorName)
                        .font(.custom("NotoSansKR-Medium", size: 13))
                        .frame(width:116, alignment: .center)
                }
                
            }
        }
        .padding(.leading, -13)
        .frame(width:110, height: 100)
        .background(
            LinearGradient(gradient: Gradient(colors: [Color(#colorLiteral(red: 0.9999018312, green: 1, blue: 0.9998798966, alpha: 1)), Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1))]), startPoint: .topLeading, endPoint: .bottomTrailing)
        )
        .foregroundColor(.black)
    }
}

struct ReviewView: View {
    let review : Review
    var body: some View {
        VStack(alignment: .center){
                VStack(alignment: .center) {
                    Text(review.review)
                        .font(.custom("NotoSansKR-Light", size: 13))
                        .frame(width:300, alignment: .center)
                        .padding(.bottom, 5)
                    
                    Text(review.name)
                        .font(.custom("NotoSansKR-Light", size: 13))
                        .frame(width:300, alignment: .trailing)
                        .foregroundColor(Color(#colorLiteral(red: 0.631372549, green: 0.631372549, blue: 0.631372549, alpha: 1)))
                }
            
        }
        .frame(width:334.8, height:100)
        .cornerRadius(10)
        .overlay(RoundedRectangle(cornerRadius: 8)
        .stroke(Color(#colorLiteral(red: 0.8980392157, green: 0.8980392157, blue: 0.8980392157, alpha: 1)), lineWidth: 3))
        .padding(.bottom, 10)
        
        .padding(.leading, 185)
    }
}
}
