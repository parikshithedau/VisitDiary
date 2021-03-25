//
//  CreateTripViewController.swift
//  Visit Diary
//
//  Created by Parikshit.Hedau on 27/02/21.
//  Copyright © 2021 Parikshit.Hedau. All rights reserved.
//

import UIKit

class CreateTripViewController: UIViewController {

    @IBOutlet weak var tblForm: UITableView!
    
    private var createTripViewModal: CreateTripViewModal!
    
//    private var 
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
//        self.navigationItem.hidesBackButton = true
        self.navigationController?.navigationBar.prefersLargeTitles = true
        self.navigationItem.largeTitleDisplayMode = .always
        self.navigationItem.title = "Create a trip"
        
        navigationController?.setNavigationBarHidden(false, animated: true)
    }
}

// MARK:- TableView Delegate & DataSource Methods
extension CreateTripViewController: UITableViewDelegate, UITableViewDataSource {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let type = CreateTripCell.allCases[indexPath.row]
        
        if type == .name {
            
            let cell = tableView.dequeueReusableCell(withIdentifier: "CreateTripTxtTableCell") as! CreateTripTxtTableCell
            
            
            
            return cell
        }
        else if type == .members {
            
            let cell = tableView.dequeueReusableCell(withIdentifier: "CreateTripTxtTableCell") as! CreateTripTxtTableCell
            
            return cell
        }
        else {
            
            let cell = tableView.dequeueReusableCell(withIdentifier: "CreateTripTxtTableCell") as! CreateTripTxtTableCell
            
            return cell
        }
    }
}

extension CreateTripViewController {
    
    enum CreateTripCell: CaseIterable {
        case name
        case members
        case location
    }
}
