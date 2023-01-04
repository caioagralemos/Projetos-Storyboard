//
//  Destaque.swift
//  MaceioMusic
//
//  Created by Student on 23/11/22.
//  Copyright © 2022 Student. All rights reserved.
//

import Foundation

class Destaque{
    
    let nomeDestaque: String
    let descricaoDestaque: String
    let imagemDestaque: String
    let imagem2Destaque: String
    
    init(nomeDestaque: String, descricaoDestaque: String, imagemDestaque: String, imagem2Destaque: String){
        self.nomeDestaque = nomeDestaque
        self.descricaoDestaque = descricaoDestaque
        self.imagemDestaque = imagemDestaque
        self.imagem2Destaque = imagem2Destaque
    }
}

class DestaqueDAO{
    static func getList() -> Destaque{
        return Destaque(nomeDestaque: "Justin Bieber", descricaoDestaque: "Justin's recent album JUSTICE includes the chart-topping global smashes Peaches feat. Daniel Caesar & Giveon, Holy feat. Chance The Rapper, Lonely feat. Benny Blanco, Anyone, and Hold On. The album also features guest appearances from The Kid LAROI, Dominic Fike, Khalid, Beam, Burna Boy, Lil Uzi Vert, Jaden, Quavo + more.\n\nThe JUSTICE campaign has reasserted Justin’s dominance as a live performer; from his triumphant return to the live stage with his T-Mobile-sponsored NYE livestream concert, to his record breaking TikTok performance “Journals Live” to his stunning AR-assisted performance for Spotify, to his epic Nickelodeon Kids' Choice Awards set and this week’s blockbuster NPR Tiny Desk Concert, Justin has delivered undeniable, show stopping performances.\n\nAlong the way, Justin has appeared as musical guest twice on Saturday Night Live, performed on The American Music Awards, The People’s Choice Awards, and much more. With over 86 billion career streams and over 78 million albums sold worldwide, Justin Bieber continues to reign as one of the biggest artists in the world. Bieber is the #1 artist on Spotify with over 75 million monthly listeners!", imagemDestaque: "justin", imagem2Destaque: "news44189-big")
    }
}
