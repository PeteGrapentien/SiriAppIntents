//
//  ListCreator.swift
//  GroceryList
//
//  Created by Peter Grapentien on 11/14/24.
//

import AppIntents

struct ListCreator: AppIntent {
    static var title: LocalizedStringResource = "Create List"
    
    @Parameter(title: "List Name")
    var name: String?
    
    
    public func getList() -> [TaskItem] {
        guard let itemName = name else {
            return [
                TaskItem(title: "Groceries", id: "1"),
                TaskItem(title: "Homework", id: "2"),
                TaskItem(title: "Take Kids to Preschool", id: "3"),
                TaskItem(title: "Exercise", id: "4")]
        }
        
        return [TaskItem(title: itemName, id: "1")]
    }
    
    func perform() async throws -> some IntentResult & ReturnsValue<String> {
        print(name ?? "No name recorded")
        return .result(value: "Created new list with \"\(name ?? "Tasky List")\"")
    }
}
