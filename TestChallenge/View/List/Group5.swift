//
//  Group5.swift
//  TestChallenge
//
//  Created by 강민주 on 2021/10/08.
//

import SwiftUI

struct Movie : Identifiable {
    let id = UUID()
    let title : String
    let movieName: String
}
var movies = [
    Movie(title: "Moonlight Movie", movieName: "disney"),
    Movie(title: "Mission Imposible",  movieName: "disney"),
    Movie(title: "Parasite", movieName: "disney"),
]

struct Group5: View {
    var body: some View {
        VStack(alignment: .leading) {
            VStack(alignment: .leading, spacing: 16){
                Text("현재 상영중")
                    .font(.custom("NotoSansKR-Bold", size: 25))
                    .padding(.leading)
            
                Group1()
            
                
                
            }
        }
    }
}

struct Group5_Previews: PreviewProvider {
    static var previews: some View {
        Group5()
    }
}

func loadData(){
    for family: String in UIFont.familyNames {
        print(family)
        for names: String in UIFont.fontNames(forFamilyName: family)
        { print("== \(names)") } }
}



