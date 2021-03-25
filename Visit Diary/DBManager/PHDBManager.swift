//
//  PHDBManager.swift
//  Visit Diary
//
//  Created by Parikshit.Hedau on 16/02/21.
//  Copyright © 2021 Parikshit.Hedau. All rights reserved.
//

import UIKit
import CoreData

class PHDBManager: NSObject {
        
    let managedObjectModelName: String
    
    override init() {
        
        self.managedObjectModelName = "VisitDiaryDB"
    }
    
    private lazy var sharedContext: NSManagedObjectContext? = {
        
        return self.persistentContainer.viewContext
    }()
    
    private lazy var objectModel: NSManagedObjectModel? = {
        
        return self.persistentContainer.managedObjectModel
    }()
    
    private lazy var storeCoordinator: NSPersistentStoreCoordinator? = {
        
        return self.persistentContainer.persistentStoreCoordinator
    }()
    
    private lazy var persistentContainer: NSPersistentContainer = {
        
        let container = NSPersistentContainer(name: self.managedObjectModelName)
        
        /*add necessary support for migration*/
        let description = NSPersistentStoreDescription()
        description.shouldMigrateStoreAutomatically = true
        description.shouldInferMappingModelAutomatically = true
        
        var documentsPath = NSSearchPathForDirectoriesInDomains(.documentDirectory, .userDomainMask, true)[0]
        documentsPath.append("/\(self.managedObjectModelName).sqlite")
        
        let url = URL(fileURLWithPath:documentsPath)
        
        description.url = url
        
        print("DB path ------------------- \(url)")
        
        container.persistentStoreDescriptions =  [description]
        /*add necessary support for migration*/
        
        container.loadPersistentStores(completionHandler: { (storeDescription, error) in
            
            if let error = error as NSError? {
                fatalError("Unresolved error \(error), \(error.userInfo)")
            }
        })
        
        return container
    }()
}

// MARK:- Utility Methods
extension PHDBManager {
    
    func addPlace() {
        
        
    }
}

