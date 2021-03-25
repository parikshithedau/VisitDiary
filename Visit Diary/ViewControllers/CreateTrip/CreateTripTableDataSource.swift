//
//  CreateTripTableDataSource.swift
//  Visit Diary
//
//  Created by Parikshit.Hedau on 28/02/21.
//  Copyright © 2021 Parikshit.Hedau. All rights reserved.
//

import UIKit

class CreateTripTableDataSource: NSObject, UITableViewDelegate, UITableViewDataSource {
    
    var 
    var items: [T]?
    
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return CreateTripCell.allCases.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        
    }
}
