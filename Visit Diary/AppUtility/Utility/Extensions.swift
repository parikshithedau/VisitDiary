//
//  Extensions.swift
//  Visit Diary
//
//  Created by Parikshit.Hedau on 16/02/21.
//  Copyright © 2021 Parikshit.Hedau. All rights reserved.
//

import UIKit

extension UIView {
    
    @IBInspectable var isBGTheme: Bool {
        
        get { return false }
        
        set {
            
            self.backgroundColor = Appearances.appBGColor
        }
    }
    
    @IBInspectable var addShadow: Bool {
        
        get { return false }
        
        set {
            
            self.layer.shadowColor = UIColor(red: 0, green: 0, blue: 0, alpha: 1.0).cgColor
            self.layer.shadowOffset = CGSize(width: -1, height: -1)
            self.layer.shadowOpacity = 1.0
            self.layer.shadowRadius = 4
            self.layer.masksToBounds = false
        }
    }
}


