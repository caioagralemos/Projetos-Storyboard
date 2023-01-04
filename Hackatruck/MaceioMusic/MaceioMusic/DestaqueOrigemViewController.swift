//
//  DestaqueOrigemViewController.swift
//  MaceioMusic
//
//  Created by Student on 23/11/22.
//  Copyright © 2022 Student. All rights reserved.
//

import UIKit

class DestaqueOrigemViewController: UIViewController {

    @IBOutlet weak var imagemDestaqueLabel: UIImageView!
    
    @IBOutlet weak var nomeDestaqueLabel: UILabel!
    
    var destaque = DestaqueDAO.getList()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        imagemDestaqueLabel.image = UIImage(named: destaque.imagemDestaque)!
        nomeDestaqueLabel.text = destaque.nomeDestaque

        // Do any additional setup after loading the view.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "vermais"{
            if let viewDestino = segue.destination as? DestaqueDestinoViewController{
                viewDestino.destaque = DestaqueDAO.getList()
                
                
        }
        }
        
    }

}
