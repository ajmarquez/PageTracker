//
//  PageTrackerApp.swift
//  PageTracker
//
//  Created by Abelardo Marquez on 18.03.22.
//

import SwiftUI

@main
struct PageTrackerApp: App {
    @StateObject var dataController: DataController
    
    init() {
        let dataController = DataController()
        _dataController = StateObject(wrappedValue: dataController)
    }
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, dataController.container.viewContext)
                .environmentObject(dataController)
        }
    }
}
