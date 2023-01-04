//
//  MusicaViewController.swift
//  MaceioMusic
//
//  Created by Student on 22/11/22.
//  Copyright © 2022 Student. All rights reserved.
//

import UIKit

class MusicaViewController: UIViewController {

    @IBOutlet weak var fotoMusicaLabel: UIImageView!
    
    @IBOutlet weak var nomeMusicaLabel: UILabel!
    
    @IBOutlet weak var artistaMusicaLabel: UILabel!
    
    @IBOutlet weak var topodatelaLabel: UINavigationItem!
    
    @IBOutlet weak var albumMusicaLabel: UILabel!

    var musica: Musica?

    override func viewDidLoad() {
        super.viewDidLoad()
        
        nomeMusicaLabel.text = musica?.nomeMusica
        fotoMusicaLabel.image = UIImage(named: musica!.fotoMusica)
        artistaMusicaLabel.text = musica?.artistaMusica
        albumMusicaLabel.text = musica?.albumMusica

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
