//
//  PersistentContainer.swift
//  finPlanner
//
//  Created by Admin on 23.02.26.
//
import Foundation
import CoreData

class PersistentContainer {
    static let shared = PersistentContainer()
    private init() {}
    
    lazy var persistentContainer: NSPersistentContainer = {
        
        let container = NSPersistentContainer(name: "db")
        container.loadPersistentStores(completionHandler: { (storeDescription, error) in
            if let error = error as NSError? {
                fatalError("Unresolved error \(error), \(error.userInfo)")
            }
        })
        return container
    }()
}
