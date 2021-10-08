//
//  HighratingCell.swift
//  TestChallenge
//
//  Created by 강민주 on 2021/10/08.
//

import SwiftUI

struct HighratingCell: View {
    var body: some View {
        VStack(alignment: .leading) {
            VStack(alignment: .leading, spacing: 16){
                Text("높은 평점")
                    .font(.custom("NotoSansKR-Bold", size: 25))
                    .padding(.leading, 20)
                    .padding(.bottom, 10)
                
                MovieList()
            
                
                
            }
        }
    }
}

struct HighratingCell_Previews: PreviewProvider {
    static var previews: some View {
        HighratingCell()
    }
}
