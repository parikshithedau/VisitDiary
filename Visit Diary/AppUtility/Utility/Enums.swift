//
//  Enums.swift
//  Visit Diary
//
//  Created by Parikshit.Hedau on 16/02/21.
//  Copyright © 2021 Parikshit.Hedau. All rights reserved.
//

import UIKit

enum Storyboards: String {
    
    case home = "Home"
    
    func instantiateViewController<T: UIViewController>(vc: T.Type) -> T {
        
        let storyboard = UIStoryboard(name: self.rawValue, bundle: nil)
              
        if let viewController = storyboard.instantiateViewController(withIdentifier: String(describing: T.self)) as? T {
            
            return viewController
        }
        else {
            
            fatalError("\(String(describing: T.self)) -> View Controller not found.")
        }
    }
}
