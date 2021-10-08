//
//  ListView.swift
//  TestChallenge
//
//  Created by 강민주 on 2021/10/08.
//

import SwiftUI

struct DetailView: View {
    var body: some View {
        ScrollView() {
            CurrentCell()
        }
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView()
    }
}
