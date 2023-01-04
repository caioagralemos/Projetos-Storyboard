//
//  ViewController.swift
//  Calculadora de IMC
//
//  Created by Student on 19/11/22.
//  Copyright © 2022 Student. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var pesokg: UITextField!
    
    @IBOutlet weak var alturam: UITextField!
    
    @IBAction func enviar(_ sender: Any) {
        let peso = Double(pesokg.text!)
        let altura = Double(alturam.text!)
        let resultado = peso! / (altura! * altura!)
        
        if resultado < 18.5{
        resposta.text = "Seu IMC é \(String(resultado)) e você se encontra abaixo do peso"
        }
        else if resultado >= 18.5 && resultado <= 24.9{
            resposta.text = "Seu IMC é \(String(resultado)) e você se encontra no seu peso ideal"
        }
        else if resultado >= 25.0 && resultado <= 29.9{
            resposta.text = "Seu IMC é \(String(resultado)) e você se encontra levemente acima do peso"
        }
        else if resultado >= 30.0 && resultado <= 34.9{
            resposta.text = "Seu IMC é \(String(resultado)) e você se encontra na obesidade grau 1"
        }
        else if resultado >= 35.0 && resultado <= 39.9{
            resposta.text = "Seu IMC é \(String(resultado)) e você se encontra na obesidade grau 2"
        }
        else if resultado >= 40.0 {
            resposta.text = "Seu IMC é \(String(resultado)) e você se encontra na obesidade grau 3"
        }
        else{
            resposta.text = "Algo deu errado."
        }

        
    }
    
    @IBOutlet weak var resposta: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

