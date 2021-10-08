//
//  ListView.swift
//  TestChallenge
//
//  Created by 강민주 on 2021/10/08.
//

import SwiftUI

extension UINavigationController {
    override open func viewDidLoad() {
        super.viewDidLoad()

        let appearance = UINavigationBarAppearance()
        appearance.configureWithTransparentBackground()
        appearance.backgroundImage = UIImage(named: "midnight")

        navigationBar.standardAppearance = appearance
        navigationBar.compactAppearance = appearance
        navigationBar.scrollEdgeAppearance = appearance
    }
}

struct DetailView: View {
    var body: some View {
//        NavigationView {
//
//        }
        GeometryReader { geometry in
                ZStack {
                    Image("midnight")
                        .resizable()
                        .aspectRatio(geometry.size, contentMode: .fit)
                        .edgesIgnoringSafeArea(.all)
                        Color.black.opacity(0.6)
                        
                }
            
            VStack(alignment: .leading){
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
                                                .stroke(Color.purple, lineWidth: 2)
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
                        .padding(.trailing, 100)
                    }
                    .frame(width: geometry.size.width)
                    .padding(5)
                    
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
                            
                            Text("종말을 맞이한 지구, 북극에는 외로운 과학자 오거스틴이 살아있다. 오거스틴은 탐사를 마치고 귀환하던 중 지구와 연락이 끊긴 우주 비행사 설리가 짧은 교신에 성공한다. 그는 설리와 그녀의 동료 우주 비행사들이 원인 불명의 재앙을 맞은 지구로 귀환하는 것을 막고자 분투하는데...")
                                .font(.custom("NotoSansKR-Regular", size: 19))
                                .foregroundColor(Color(#colorLiteral(red: 0.5098039216, green: 0.5098039216, blue: 0.5098039216, alpha: 1)))
                                .frame(width: geometry.size.width-40)
                        }
                    }
                    .padding(.top, 15)
                    
                    VStack(alignment: .leading) {
                        VStack(alignment: .leading, spacing: 16){
                            Text("리뷰")
                                .font(.custom("NotoSansKR-Bold", size: 25))
                                .padding(.bottom, 10)
                            
                            Text("종말을 맞이한 지구, 북극에는 외로운 과학자 오거스틴이 살아있다. 오거스틴은 탐사를 마치고 귀환하던 중 지구와 연락이 끊긴 우주 비행사 설리가 짧은 교신에 성공한다. 그는 설리와 그녀의 동료 우주 비행사들이 원인 불명의 재앙을 맞은 지구로 귀환하는 것을 막고자 분투하는데...")
                                .font(.custom("NotoSansKR-Regular", size: 19))
                                .foregroundColor(Color(#colorLiteral(red: 0.5098039216, green: 0.5098039216, blue: 0.5098039216, alpha: 1)))
                                .frame(width: geometry.size.width-40)
                        }
                    }
                    .padding(.top, 15)
                }
                .frame(width: geometry.size.width)
                .background(Color.white)
                .cornerRadius(16)
                }
        }
    }
}


struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView()
    }
}
