//
//  ViewController.swift
//  Jogo da Velha
//
//  Created by Caio on 22/12/22.
//

import UIKit

class ViewController: UIViewController {
    
    enum Turno {
        case Bola
        case Xis
    }
    
    
    @IBOutlet weak var TurnLabel: UILabel!
    @IBOutlet weak var a1Button: UIButton!
    @IBOutlet weak var a2Button: UIButton!
    @IBOutlet weak var a3Button: UIButton!
    @IBOutlet weak var b1Button: UIButton!
    @IBOutlet weak var b2Button: UIButton!
    @IBOutlet weak var b3Button: UIButton!
    @IBOutlet weak var c1Button: UIButton!
    @IBOutlet weak var c2Button: UIButton!
    @IBOutlet weak var c3Button: UIButton!
    @IBOutlet weak var xPoints: UILabel!
    @IBOutlet weak var oPoints: UILabel!
    @IBOutlet weak var mainLabel: UILabel!
    
    var primeiroTurno = Turno.Xis
    var atualTurno = Turno.Xis
    
    var BOLA = "O"
    var XIS = "X"
    var board = [UIButton]()
    var pontosBola = 0
    var pontosXis = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor(patternImage: UIImage(named: "background.png")!)
        initBoard()
        
        self.mainLabel.layer.cornerRadius = 13
    
    }
    
    func initBoard(){
        board.append(a1Button)
        board.append(a2Button)
        board.append(a3Button)
        board.append(b1Button)
        board.append(b2Button)
        board.append(b3Button)
        board.append(c1Button)
        board.append(c2Button)
        board.append(c3Button)
    }
    
    @IBAction func boardTapAction(_ sender: UIButton) {
        addToBoard(sender)
        
        if victory(XIS){
            resultAlert(title: "Xis venceu!")
            pontosXis = pontosXis + 1
            xPoints.text = String(pontosXis)
            oPoints.text = String(pontosBola)
        }
        
        if victory(BOLA){
            resultAlert(title: "Bola venceu!")
            pontosBola = pontosBola + 1
            xPoints.text = String(pontosXis)
            oPoints.text = String(pontosBola)
        }
        
        if (fullBoard()) {
        resultAlert(title: "Empate")
        }
    }
    
    func victory (_ s: String) -> Bool{
        
        // horizontal
        if thisSymbol(a1Button, s) && thisSymbol(a2Button, s) && thisSymbol(a3Button, s) {
            return true
        }
        if thisSymbol(b1Button, s) && thisSymbol(b2Button, s) && thisSymbol(b3Button, s) {
            return true
        }
        if thisSymbol(c1Button, s) && thisSymbol(c2Button, s) && thisSymbol(c3Button, s) {
            return true
        }
        
        // diagonal
        if thisSymbol(a1Button, s) && thisSymbol(b2Button, s) && thisSymbol(c3Button, s) {
            return true
        }
        if thisSymbol(c1Button, s) && thisSymbol(b2Button, s) && thisSymbol(a3Button, s) {
            return true
        }
        
        // vertical
        if thisSymbol(a1Button, s) && thisSymbol(b1Button, s) && thisSymbol(c1Button, s) {
            return true
        }
        if thisSymbol(a2Button, s) && thisSymbol(b2Button, s) && thisSymbol(c2Button, s) {
            return true
        }
        if thisSymbol(a3Button, s) && thisSymbol(b3Button, s) && thisSymbol(c3Button, s) {
            return true
        }

        return false
    }
    
    func thisSymbol(_ button: UIButton, _ symbol: String) -> Bool {
        return button.title(for: .normal) == symbol
    }
    
    func resultAlert(title: String){
        let message = "\nBolas " + String(pontosBola) + "\nXis " + String(pontosXis)
        let ac = UIAlertController(title: title, message: nil, preferredStyle: .actionSheet)
        ac.addAction(UIAlertAction(title: "Resetar o Jogo", style: .default, handler: { (_) in
            self.resetBoard()
        }))
        self.present(ac, animated: true)
    }
    
    func resetBoard(){
        for button in board {
            button.setTitle(nil, for: .normal)
            button.isEnabled = true
        }
        if(primeiroTurno == Turno.Xis){
            primeiroTurno = Turno.Bola
            TurnLabel.text = BOLA
        }
        else if(primeiroTurno == Turno.Bola){
            primeiroTurno = Turno.Xis
            TurnLabel.text = XIS
        }
        atualTurno = primeiroTurno
    }
    
    func fullBoard() -> Bool {
        for button in board{
            if button.title(for: .normal) == nil {
                return false
            }
        }
        return true
    }
    
    func addToBoard(_ sender: UIButton){
        
        if(sender.title(for: .normal) == nil){
            if(atualTurno == Turno.Bola) {
                sender.setTitle(BOLA, for: .normal)
                atualTurno = Turno.Xis
                TurnLabel.text = XIS
            }
            else if(atualTurno == Turno.Xis) {
                sender.setTitle(XIS, for: .normal)
                atualTurno = Turno.Bola
                TurnLabel.text = BOLA
            }
            sender.isEnabled = false
        }
    }
    


}

