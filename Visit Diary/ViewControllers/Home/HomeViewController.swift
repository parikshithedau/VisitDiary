//
//  HomeViewController.swift
//  Visit Diary
//
//  Created by Parikshit.Hedau on 28/02/21.
//  Copyright © 2021 Parikshit.Hedau. All rights reserved.
//

import UIKit
import MapKit

class HomeViewController: UIViewController {

    @IBOutlet weak var mapTrips: MKMapView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        
        super.viewWillAppear(animated)
        
        navigationController?.setNavigationBarHidden(true, animated: animated)
    }
}

// MARK:- IBActions
extension HomeViewController {
    
    @IBAction func btnStartNewTripClicked() {
        
        goToCreateTrip()
    }
    
    @IBAction func btnSeeMediasClicked() {
        
    }
    
    @IBAction func btnSearchClicked() {
        
        
    }
    
    @IBAction func btnSeeMembersClicked() {
        
        
    }
}

// MARK:- Navigations
extension HomeViewController {
    
    func goToCreateTrip() {
        
        let createTripVC = Storyboards.home.instantiateViewController(vc: CreateTripViewController.self)
        
        self.navigationController?.pushViewController(createTripVC!, animated: true)
    }
}
