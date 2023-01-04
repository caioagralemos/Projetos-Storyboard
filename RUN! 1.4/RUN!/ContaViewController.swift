//
//  ContaViewController.swift
//  RUN!
//
//  Created by Student on 12/12/22.
//  Copyright © 2022 CaioLemos. All rights reserved.
//

import UIKit

class ContaViewController: UIViewController {
    
    
    let defaults = UserDefaults.standard
    
    @IBOutlet weak var NomeTextField: UITextField!
    @IBOutlet weak var EmailTextField: UITextField!
    @IBOutlet weak var SobreNomeTextField: UITextField!
    @IBOutlet weak var CidadeTextField: UITextField!
    
    
    
    @IBAction func ButtonSave(_ sender: Any) {
        
        if(self.NomeTextField.text != nil && self.EmailTextField.text != nil){
        print("saving ...")
        let name = self.NomeTextField.text!
        let email = self.EmailTextField.text!
        
        self.defaults.set(name, forKey: "userName")
        self.defaults.set(email, forKey: "userEmail")
        
        print(name)
        print(email)

        
        let controller = storyboard?.instantiateInitialViewController() as! UITabBarController
        controller.modalPresentationStyle = .fullScreen
        present(controller, animated: true, completion: nil)
        //let controller = storyboard?.instantiateViewController(identifier: "inicio") as! TelaInicioViewController
        //controller.text = "Bem vindo, \(String?(name) ?? "Amigo")"
         //controller.modalPresentationStyle = .fullScreen
        //present(controller, animated: true, completion: nil)
    }
           
}

    override func viewDidLoad() {
        super.viewDidLoad()
        
        //Looks for single or multiple taps.
         let tap = UITapGestureRecognizer(target: self, action: #selector(UIInputViewController.dismissKeyboard))

        //Uncomment the line below if you want the tap not not interfere and cancel other interactions.
        //tap.cancelsTouchesInView = false

        view.addGestureRecognizer(tap)

            }
    
    @objc func dismissKeyboard() {
        //Causes the view (or one of its embedded text fields) to resign the first responder status.
        view.endEditing(true)
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
