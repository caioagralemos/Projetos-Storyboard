//
//  DestaqueDestinoViewController.swift
//  MaceioMusic
//
//  Created by Student on 23/11/22.
//  Copyright © 2022 Student. All rights reserved.
//

import UIKit

class DestaqueDestinoViewController: UIViewController {
    
    var destaque: Destaque?

    @IBOutlet weak var imagem2: UIImageView!
    
    @IBOutlet weak var descricao: UITextView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        descricao.text = destaque?.descricaoDestaque
        imagem2.image = UIImage(named: destaque!.imagem2Destaque)

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
