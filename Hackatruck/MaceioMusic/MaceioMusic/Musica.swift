//
//  Musica.swift
//  MaceioMusic
//
//  Created by Student on 22/11/22.
//  Copyright © 2022 Student. All rights reserved.
//

import Foundation

class Musica {
    
    let nomeMusica: String
    let artistaMusica: String
    let albumMusica: String
    let fotoMusica: String
    
    init(nomeMusica: String, artistaMusica: String, albumMusica: String, fotoMusica: String){
        self.nomeMusica = nomeMusica
        self.artistaMusica = artistaMusica
        self.albumMusica = albumMusica
        self.fotoMusica = fotoMusica
    }
}

class MusicaDAO{
    
    static func getList() -> [Musica]{
        return[
        
            Musica(nomeMusica: "Higher Power", artistaMusica: "Coldplay", albumMusica: "Music of The Spheres", fotoMusica: "coldplay"),
            Musica(nomeMusica: "Humankind", artistaMusica: "Coldplay", albumMusica: "Music of The Spheres", fotoMusica: "coldplay"),
            Musica(nomeMusica: "Let Somebody Go", artistaMusica: "Coldplay", albumMusica: "Music of The Spheres", fotoMusica: "coldplay"),
            Musica(nomeMusica: "People of The Pride", artistaMusica: "Coldplay", albumMusica: "Music of The Spheres", fotoMusica: "coldplay"),
            Musica(nomeMusica: "Biutyful", artistaMusica: "Coldplay", albumMusica: "Music of The Spheres", fotoMusica: "coldplay"),
            Musica(nomeMusica: "My Universe", artistaMusica: "Coldplay", albumMusica: "Music of The Spheres", fotoMusica: "coldplay"),
            Musica(nomeMusica: "Ghost", artistaMusica: "Justin Bieber", albumMusica: "Justice (Deluxe)", fotoMusica: "JB"),
            Musica(nomeMusica: "2 Much", artistaMusica: "Justin Bieber", albumMusica: "Justice (Deluxe)", fotoMusica: "JB"),
            Musica(nomeMusica: "Unstable", artistaMusica: "Justin Bieber", albumMusica: "Justice (Deluxe)", fotoMusica: "JB"),
            Musica(nomeMusica: "As I Am", artistaMusica: "Justin Bieber", albumMusica: "Justice (Deluxe)", fotoMusica: "JB"),
            Musica(nomeMusica: "Somebody", artistaMusica: "Justin Bieber", albumMusica: "Justice (Deluxe)", fotoMusica: "JB"),
            Musica(nomeMusica: "Angels Speak", artistaMusica: "Justin Bieber", albumMusica: "Justice (Deluxe)", fotoMusica: "JB"),
            Musica(nomeMusica: "Hollywood's Bleeding", artistaMusica: "Post Malone", albumMusica: "Hollywood's Bleeding", fotoMusica: "post"),
            Musica(nomeMusica: "Saint-Tropez", artistaMusica: "Post Malone", albumMusica: "Hollywood's Bleeding", fotoMusica: "post"),
            Musica(nomeMusica: "Wow.", artistaMusica: "Post Malone", albumMusica: "Hollywood's Bleeding", fotoMusica: "post"),
            Musica(nomeMusica: "Circles", artistaMusica: "Post Malone", albumMusica: "Hollywood's Bleeding", fotoMusica: "post"),
            Musica(nomeMusica: "Take What You Want (feat. Ozzy Ozbourne)", artistaMusica: "Post Malone", albumMusica: "Hollywood's Bleeding", fotoMusica: "post"),
            Musica(nomeMusica: "Sunflower", artistaMusica: "Post Malone", albumMusica: "Hollywood's Bleeding", fotoMusica: "post")
        ]
    }
}
