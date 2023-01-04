//
//  TelaInicioViewController.swift
//  RUN!
//
//  Created by Student on 12/12/22.
//  Copyright © 2022 CaioLemos. All rights reserved.
//

import UIKit
import MapKit
import CoreLocation

class TelaInicioViewController: UIViewController {

    
        
    let defaults = UserDefaults.standard

    @IBOutlet weak var bemVindoLabel: UILabel!
    
    @IBOutlet weak var origemTextField: UITextField!
    
    @IBOutlet weak var destinoTextField: UITextField!
    
    @IBOutlet weak var idaevoltaLabel: UISegmentedControl!
    
    var destinoLocation: CLLocation?
       
    //let destino = "Sao Paulo"
    
    var text: String?
    
    
    func getUserName() {
        
        let key: String = "userName"
        
        
        //print("my value \(self.defaults.string(forKey: key))")
        if let value = self.defaults.string(forKey: key) {
            
            self.bemVindoLabel.text = "Bem vindo(a), " + value
            
            
        }else{
            
            self.bemVindoLabel.text = "Bem vindo(a), Amigo" 
        }
        
        
        
        
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        getUserName()
        
        //if text != nil {
        //    bemVindoLabel.text = text
        //}
        
        //Looks for single or multiple taps.
         let tap = UITapGestureRecognizer(target: self, action: #selector(UIInputViewController.dismissKeyboard))

        //Uncomment the line below if you want the tap not not interfere and cancel other interactions.
        //tap.cancelsTouchesInView = false

        view.addGestureRecognizer(tap)

        // Do any additional setup after loading the view.
    }
    
    @objc func dismissKeyboard() {
        //Causes the view (or one of its embedded text fields) to resign the first responder status.
        view.endEditing(true)
    }
    
    func getAddress(){
        
        let geoCoder = CLGeocoder()
        geoCoder.geocodeAddressString(destinoTextField.text!){
            (placemarks, error) in
            guard let placemarks = placemarks, let location = placemarks.first?.location
                else{
                    print("No location found")
                    return
            }
            print(location)
            //self.mapThis(destinationCord: location.coordinate)
            self.destinoLocation = location
        }
    }

    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        getAddress()
        
        if segue.identifier == "segueum"{
            
            if let viewDestino = segue.destination as? BriefingViewController{
                
                viewDestino.local = destinoTextField.text
            }

        }
    }

}
