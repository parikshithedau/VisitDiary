//
//  Utility.swift
//  Visit Diary
//
//  Created by Parikshit.Hedau on 16/02/21.
//  Copyright © 2021 Parikshit.Hedau. All rights reserved.
//

import UIKit

class Utility: NSObject {

    func rgb(_ red:CGFloat, _ green:CGFloat, _ blue:CGFloat, _ alpha:CGFloat) -> UIColor {
        
        let color = UIColor(red: red/255.0, green: green/255.0, blue: blue/255.0, alpha: alpha)
        return color
    }
}
