//
//  Stars.swift
//  TestChallenge
//
//  Created by 강민주 on 2021/10/08.
//

import SwiftUI

struct Stars: View {
    var body: some View {
        HStack(alignment:.center, spacing: 5) {
            Image("staryellow")
                .resizable()
                .frame(width:10.8, height:10.8)
                .aspectRatio(contentMode: .fit)
            
            Image("staryellow")
                .resizable()
                .frame(width:10.8, height:10.8)
                .aspectRatio(contentMode: .fit)
            
            Image("staryellow")
                .resizable()
                .frame(width:10.8, height:10.8)
                .aspectRatio(contentMode: .fit)
            
            Image("staryellow")
                .resizable()
                .frame(width:10.8, height:10.8)
                .aspectRatio(contentMode: .fit)
            
            Image("staryellow")
                .resizable()
                .frame(width:10.8, height:10.8)
                .aspectRatio(contentMode: .fit)
        }
    }
}

struct Stars_Previews: PreviewProvider {
    static var previews: some View {
        Stars()
    }
}
