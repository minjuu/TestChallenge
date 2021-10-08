//
//  PopularCell.swift
//  TestChallenge
//
//  Created by 강민주 on 2021/10/08.
//

import SwiftUI

struct PopularCell: View {
    var body: some View {
        VStack(alignment: .leading) {
            VStack(alignment: .leading, spacing: 16){
                Text("인기")
                    .font(.custom("NotoSansKR-Bold", size: 25))
                    .padding(.leading, 20)
                    .padding(.bottom, 10)
                
                MovieList()
            
                
                
            }
        }
    }
}

struct PopularCell_Previews: PreviewProvider {
    static var previews: some View {
        PopularCell()
    }
}
