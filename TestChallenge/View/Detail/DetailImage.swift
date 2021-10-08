//
//  DetailImage.swift
//  TestChallenge
//
//  Created by 강민주 on 2021/10/08.
//

import SwiftUI

struct DetailImage: View {
    var body: some View {
        Image("midnight")
            .resizable()
            .frame(width:124.8, height:191.004)
            .aspectRatio(contentMode: .fit)
            .cornerRadius(10)
                    .overlay(RoundedRectangle(cornerRadius: 8)
                        .stroke(Color(#colorLiteral(red: 0.8979505897, green: 0.8981012702, blue: 0.8979307413, alpha: 1)), lineWidth: 1))
                    .shadow(radius: 1)
            .padding(.bottom, -100)
    }
}

struct DetailImage_Previews: PreviewProvider {
    static var previews: some View {
        DetailImage()
    }
}
