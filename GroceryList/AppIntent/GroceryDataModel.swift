//
//  GroceryDataModel.swift
//  GroceryList
//
//  Created by Peter Grapentien on 11/14/24.
//

import AppIntents

struct GroceryDataModel: AppShortcutsProvider {
    
    static var appShortcuts: [AppShortcut] {
        AppShortcut(
            intent: ListCreator(),
            phrases: ["Create a new \(.applicationName) list"], shortTitle: "Create List", systemImageName: "checklist"
        )
    }
    
    
}
