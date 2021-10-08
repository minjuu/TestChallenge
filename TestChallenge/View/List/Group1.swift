//
//  Group1.swift
//  TestChallenge
//
//  Created by 강민주 on 2021/10/08.
//

import SwiftUI

struct Group1: View {
    var body: some View {
        VStack {
            ScrollView(.horizontal, showsIndicators: false) {
                HStack(alignment:.center) {
                    ForEach(movies) {
                        movie in MovieView(movie: movie)
                    }
                }
            }
            .padding(.bottom,30)
            .padding(.leading, 10)
        Group2()
        }
    }
}

struct Group1_Previews: PreviewProvider {
    static var previews: some View {
        Group1()
    }
}


struct MovieView: View {
    let movie : Movie
    var body: some View {
        VStack{
            VStack{
                Image(movie.movieName)
                    .resizable()
                    .frame(width:124.8, height:191.004)
                    .aspectRatio(contentMode: .fit)
                    .cornerRadius(10)
                            .overlay(RoundedRectangle(cornerRadius: 8)
                                .stroke(Color(#colorLiteral(red: 0.8979505897, green: 0.8981012702, blue: 0.8979307413, alpha: 1)), lineWidth: 1))
                            .shadow(radius: 1)
                    
                VStack(alignment: .leading) {
                    Text(movie.title)
                        .font(.custom("NotoSansKR-Regular", size: 12))
                        .frame(width:106)
                }
                .padding(.top, 5)
            }
        }
        .padding(.leading, 5)
        .frame(width:140, height: 250)
        .background(
            LinearGradient(gradient: Gradient(colors: [Color(#colorLiteral(red: 0.9999018312, green: 1, blue: 0.9998798966, alpha: 1)), Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1))]), startPoint: .topLeading, endPoint: .bottomTrailing)
        )
        .foregroundColor(.black)
        .cornerRadius(15.0)
    }
}
