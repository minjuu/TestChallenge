//
//  CurrentCell.swift
//  TestChallenge
//
//  Created by 강민주 on 2021/10/08.
//

import SwiftUI

struct CurrentCell: View {
    var body: some View {
        VStack(alignment: .leading) {
            VStack(alignment: .leading, spacing: 0){
                Text("현재 상영중")
                    .font(.custom("NotoSansKR-Bold", size: 25))
                    .padding([.leading, .bottom], 20)
                    
                CurrentPagination()
            
                
            }
        }
    }
}

struct CurrentCell_Previews: PreviewProvider {
    static var previews: some View {
        CurrentCell()
    }
}

func loadData(){
    for family: String in UIFont.familyNames {
        print(family)
        for names: String in UIFont.fontNames(forFamilyName: family)
        { print("== \(names)") } }
}



