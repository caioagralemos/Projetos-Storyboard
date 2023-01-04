//
//  DestinoViewController.swift
//  AulaStoryBoardUFALManha
//
//  Created by Student on 22/11/22.
//  Copyright © 2022 Student. All rights reserved.
//

import UIKit

class DestinoViewController: UIViewController {
    
    @IBOutlet weak var corDestinoTF: UILabel!
    
    var novaCor: String?

    override func viewDidLoad() {
        super.viewDidLoad()

        corDestinoTF.text = novaCor
        
        if novaCor != nil {
            switch novaCor!.lowercased(){
                
            case "azul":
                self.view.backgroundColor = UIColor.blue
            case "vermelho":
                self.view.backgroundColor = UIColor.red
            case "laranja":
                self.view.backgroundColor = UIColor.orange
            case "roxo":
                self.view.backgroundColor = UIColor.purple
            default:
                self.view.backgroundColor = UIColor.black
                
            }
        }
    }

    
    
}
