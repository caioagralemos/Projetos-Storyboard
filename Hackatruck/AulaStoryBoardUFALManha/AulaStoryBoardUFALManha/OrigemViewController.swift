//
//  OrigemViewController.swift
//  AulaStoryBoardUFALManha
//
//  Created by Student on 22/11/22.
//  Copyright © 2022 Student. All rights reserved.
//

import UIKit

class OrigemViewController: UIViewController {
    

    @IBOutlet weak var corOrigemTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "novaCor"{
            
            if let viewDestino = segue.destination as? DestinoViewController{
                
                viewDestino.novaCor = corOrigemTextField.text
                
            }
            
        }
    }
}
