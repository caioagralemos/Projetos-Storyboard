//
//  BriefingViewController.swift
//  RUN!
//
//  Created by Student on 13/12/22.
//  Copyright © 2022 CaioLemos. All rights reserved.
//

import UIKit
import MapKit
import CoreLocation

class BriefingViewController: UIViewController {
    
    var local: String?
    
    @IBOutlet weak var localLabel1: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        localLabel1.text = local
    }
    
    
   


    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.identifier == "seguedois"{
            
            if let viewDestino = segue.destination as? CorridaViewController{
                
                viewDestino.local2 = local
            }

        }
    }

}
