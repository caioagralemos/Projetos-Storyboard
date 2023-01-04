//
//  Animal.swift
//  AulaTableViewUFALManha
//
//  Created by Student on 21/11/22.
//  Copyright © 2022 Student. All rights reserved.
//

import Foundation

class Animal {
    
    let nomeAnimal: String
    let especieAnimal: String
    let fotoAnimal: String
    
    init(nomeAnimal: String, especieAnimal: String, fotoAnimal: String){
        self.nomeAnimal = nomeAnimal
        self.especieAnimal = especieAnimal
        self.fotoAnimal = fotoAnimal
    }
    
}

class AnimalDAO {
    
    static func getList() -> [Animal]{
        return[
            Animal(nomeAnimal: "Snoopy", especieAnimal: "Cachorro", fotoAnimal: "cachorro"),
            Animal(nomeAnimal: "Jack", especieAnimal: "Canguru", fotoAnimal: "canguru"),
            Animal(nomeAnimal: "Pernalonga", especieAnimal: "Coelho", fotoAnimal: "coelho"),
            Animal(nomeAnimal: "Zé Carioca", especieAnimal: "Papagaio", fotoAnimal: "papagaio"),
            Animal(nomeAnimal: "Donald", especieAnimal: "Pato", fotoAnimal: "pato"),
            Animal(nomeAnimal: "Nemo", especieAnimal: "Peixe", fotoAnimal: "peixe"),
            Animal(nomeAnimal: "Donatello", especieAnimal: "Tartaruga", fotoAnimal: "tartaruga")
        ]
    }
}
