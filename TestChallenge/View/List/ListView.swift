//
//  ListView.swift
//  TestChallenge
//
//  Created by 강민주 on 2021/10/08.
//

import SwiftUI

struct ListView: View {
    var body: some View {
        ScrollView() {
            CurrentCell()
            ExpectedCell()
            PopularCell()
            HighratingCell()
        }
    }
}

struct ListView_Previews: PreviewProvider {
    static var previews: some View {
        ListView()
    }
}
