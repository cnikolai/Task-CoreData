//
//  Task+Convenience.swift
//  Task-CoreData
//
//  Created by Cynthia Nikolai on 4/27/21.
//

import CoreData

extension Task {
    @discardableResult convenience init(name: String, notes: String?, dueDate: Date?, isComplete: Bool = false, context: NSManagedObjectContext = CoreDataStack.context) {
        self.init(context: context)
        self.name = name
        self.notes = notes
        self.dueDate = dueDate
        self.isComplete = isComplete
    }
}
