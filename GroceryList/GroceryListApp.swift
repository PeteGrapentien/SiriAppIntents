//
//  GroceryListApp.swift
//  GroceryList
//
//  Created by Peter Grapentien on 11/14/24.
//

import SwiftUI

@main
struct GroceryListApp: App {
    @State private var viewModel = ViewModel(listCreator: ListCreator())
    
    var body: some Scene {
        WindowGroup {
            ContentView().environment(viewModel)
        }
    }
}
