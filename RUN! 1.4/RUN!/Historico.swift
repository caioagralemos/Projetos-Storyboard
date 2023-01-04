//
//  Historico.swift
//  RUN!
//
//  Created by Caio Agra Lemos on 12/12/22.
//  Copyright © 2022 CaioLemos. All rights reserved.
//

import Foundation

class Historico {
    let dataHistorico: String
    let horaHistorico: String
    let distanciaHistorico: String
    let origemHistorico: String
    let destinoHistorico: String
    let climaHistorico: String
    
    init(dataHistorico: String, horaHistorico: String, distanciaHistorico: String, origemHistorico: String, destinoHistorico: String, climaHistorico: String) {
        self.dataHistorico = dataHistorico
        self.horaHistorico = horaHistorico
        self.distanciaHistorico = distanciaHistorico
        self.origemHistorico = origemHistorico
        self.destinoHistorico = destinoHistorico
        self.climaHistorico = climaHistorico
    }
}

class HistoricoDAO {
    static func getList() -> [Historico]{
        return[
            Historico(dataHistorico: "10/10/2022", horaHistorico: "06:00", distanciaHistorico: "0.5km", origemHistorico: "Instituto da Computação", destinoHistorico: "Restaurante Universitário", climaHistorico: "sun"),
            Historico(dataHistorico: "19/11/2022", horaHistorico: "11:00",distanciaHistorico: "0.3km", origemHistorico: "Instituto da Computação", destinoHistorico: "Instituto de Matemática", climaHistorico: "cloud"),
            Historico(dataHistorico: "01/12/2022", horaHistorico: "20:00",distanciaHistorico: "5km", origemHistorico: "McDonald's Praia", destinoHistorico: "Marco dos Corais", climaHistorico: "thunderstorm"),
            Historico(dataHistorico: "07/12/2022", horaHistorico: "20:00",distanciaHistorico: "5km", origemHistorico: "McDonald's Praia", destinoHistorico: "Parque Shopping Maceió", climaHistorico: "rain"),
            Historico(dataHistorico: "12/12/2022", horaHistorico: "11:00",distanciaHistorico: "0.3km", origemHistorico: "Instituto da Computação", destinoHistorico: "Restaurante Universitário", climaHistorico: "sun"),
            Historico(dataHistorico: "13/12/2022", horaHistorico: "06:00",distanciaHistorico: "0.3km", origemHistorico: "Instituto da Computação", destinoHistorico: "Faculdade de Direito de Alagoas", climaHistorico: "rain")
        ]
    }
    
}
