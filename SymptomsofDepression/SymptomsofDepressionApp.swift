//
//  SymptomsofDepressionApp.swift
//  SymptomsofDepression
//
//  Created by William Allen on 7/1/22.
//

import SwiftUI

@main
struct SymptomsofDepressionApp: App {
    let persistenceController = PersistenceController.shared
    @Environment(\.scenePhase) var scenePhase
    
    var body: some Scene {
      WindowGroup {
        ContentView()
          .environment(\.managedObjectContext, persistenceController.container.viewContext)
          .environmentObject(PHQ9ViewModel())
          .environmentObject(ZUNGViewModel())
          .environmentObject(CESDViewModel())
          .environmentObject(HADSViewModel())
          .environmentObject(GDSViewModel())
          .environmentObject(EPDSViewModel())
          .environmentObject(MDIViewModel())
          .environmentObject(GDSSViewModel())
        }
      .onChange(of: scenePhase) { _ in
        persistenceController.save() }
    }
}
