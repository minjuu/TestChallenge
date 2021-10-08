//
//  MovieList.swift
//  TestChallenge
//
//  Created by 강민주 on 2021/10/08.
//

import SwiftUI

struct MovieList: View {
    var body: some View {
        VStack{
            HStack{
                Image("disney")
                    .resizable()
                    .frame(width:54, height:82.8)
                    .aspectRatio(contentMode: .fit)
                    .cornerRadius(10)
                    .overlay(RoundedRectangle(cornerRadius: 8)
                    .stroke(Color(#colorLiteral(red: 0.8979505897, green: 0.8981012702, blue: 0.8979307413, alpha: 1)), lineWidth: 1))
                    .shadow(radius: 1)
                
                VStack(alignment: .leading) {
                    Text("Moonlight Movie")
                        .font(.custom("NotoSansKR-Medium", size: 13))
                        .frame(width:116, alignment: .leading)
                    
                    Stars()
                        .frame(width:90, alignment: .leading)
                    HStack{
                        Text("Action, Drama")
                            .font(.custom("NotoSansKR-Regular", size: 13))
                            .frame(width:116, alignment: .leading)
                            .foregroundColor(Color(#colorLiteral(red: 0.6039215686, green: 0.6039215686, blue: 0.6039215686, alpha: 1)))
                        
                        Text("2021-10-08")
                            .font(.custom("NotoSansKR-Regular", size: 13))
                            .frame(width:116, alignment: .trailing)
                            .foregroundColor(Color(#colorLiteral(red: 0.6039215686, green: 0.6039215686, blue: 0.6039215686, alpha: 1)))
                            .padding(.leading, 30)
                    }
                }
                .padding(.top, 5)
                .padding(.leading, 12)
            }
            .frame(width: 388)
            
            HStack{
                Image("disney")
                    .resizable()
                    .frame(width:54, height:82.8)
                    .aspectRatio(contentMode: .fit)
                    .cornerRadius(10)
                    .overlay(RoundedRectangle(cornerRadius: 8)
                    .stroke(Color(#colorLiteral(red: 0.8979505897, green: 0.8981012702, blue: 0.8979307413, alpha: 1)), lineWidth: 1))
                    .shadow(radius: 1)
                
                VStack(alignment: .leading) {
                    Text("Moonlight Movie")
                        .font(.custom("NotoSansKR-Medium", size: 13))
                        .frame(width:116, alignment: .leading)
                    
                    Stars()
                        .frame(width:90, alignment: .leading)
                    HStack{
                        Text("Action, Drama")
                            .font(.custom("NotoSansKR-Regular", size: 13))
                            .frame(width:116, alignment: .leading)
                            .foregroundColor(Color(#colorLiteral(red: 0.6039215686, green: 0.6039215686, blue: 0.6039215686, alpha: 1)))
                        
                        Text("2021-10-08")
                            .font(.custom("NotoSansKR-Regular", size: 13))
                            .frame(width:116, alignment: .trailing)
                            .foregroundColor(Color(#colorLiteral(red: 0.6039215686, green: 0.6039215686, blue: 0.6039215686, alpha: 1)))
                            .padding(.leading, 30)
                    }
                }
                .padding(.top, 5)
                .padding(.leading, 12)
            }
            .frame(width: 388)
            
            HStack{
                Image("disney")
                    .resizable()
                    .frame(width:54, height:82.8)
                    .aspectRatio(contentMode: .fit)
                    .cornerRadius(10)
                    .overlay(RoundedRectangle(cornerRadius: 8)
                    .stroke(Color(#colorLiteral(red: 0.8979505897, green: 0.8981012702, blue: 0.8979307413, alpha: 1)), lineWidth: 1))
                    .shadow(radius: 1)
                
                VStack(alignment: .leading) {
                    Text("Moonlight Movie")
                        .font(.custom("NotoSansKR-Medium", size: 13))
                        .frame(width:116, alignment: .leading)
                    
                    Stars()
                        .frame(width:90, alignment: .leading)
                    HStack{
                        Text("Action, Drama")
                            .font(.custom("NotoSansKR-Regular", size: 13))
                            .frame(width:116, alignment: .leading)
                            .foregroundColor(Color(#colorLiteral(red: 0.6039215686, green: 0.6039215686, blue: 0.6039215686, alpha: 1)))
                        
                        Text("2021-10-08")
                            .font(.custom("NotoSansKR-Regular", size: 13))
                            .frame(width:116, alignment: .trailing)
                            .foregroundColor(Color(#colorLiteral(red: 0.6039215686, green: 0.6039215686, blue: 0.6039215686, alpha: 1)))
                            .padding(.leading, 30)
                    }
                }
                .padding(.top, 5)
                .padding(.leading, 12)
            }
            .frame(width: 388)
            
            
        }
        .padding(.bottom, 20)
    }
}

struct MovieList_Previews: PreviewProvider {
    static var previews: some View {
        MovieList()
    }
}
