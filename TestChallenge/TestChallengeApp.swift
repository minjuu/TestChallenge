//
//  TestChallengeApp.swift
//  TestChallenge
//
//  Created by 강민주 on 2021/10/08.
//

import SwiftUI

@main
struct TestChallengeApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
