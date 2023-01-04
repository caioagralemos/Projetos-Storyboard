//
//  CorridaViewController.swift
//  RUN!
//
//  Created by Student on 13/12/22.
//  Copyright © 2022 CaioLemos. All rights reserved.
//

import UIKit
import MapKit
import CoreLocation

class CorridaViewController: UIViewController, CLLocationManagerDelegate, MKMapViewDelegate {
    
    var local2: String?
    
    @IBOutlet weak var localLabel2: UILabel!
    
    @IBOutlet weak var traveTimeLabel: UILabel!
    
    
    @IBOutlet weak var distanciaLabel: UILabel!
    
    @IBOutlet weak var travelTimeLabel: UILabel!
    
    @IBOutlet weak var mapa: MKMapView!
    
    
    var locationManager = CLLocationManager()
    
    @IBAction func buttonStartOrStop(_ sender: Any) {
        getAddress()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        localLabel2.text = local2
        
        locationManager.delegate = self
        locationManager.desiredAccuracy = kCLLocationAccuracyBest
        locationManager.requestAlwaysAuthorization()
        locationManager.requestWhenInUseAuthorization()
        locationManager.startUpdatingLocation()
        
        mapa.delegate = self
        
        }
    
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]){
        
        print(locations)
    }
    
    
    func mapThis(destinationCord: CLLocationCoordinate2D){
            
        let sourceCordinate = (locationManager.location?.coordinate)!
        
        let sourcePlaceMark = MKPlacemark(coordinate: sourceCordinate)
        let destPlaceMark = MKPlacemark(coordinate: destinationCord)
        
        let sourceItem = MKMapItem(placemark: sourcePlaceMark)
        
        let destItem = MKMapItem(placemark: destPlaceMark)
        
        let destinationRequest = MKDirections.Request()
        destinationRequest.source = sourceItem
        destinationRequest.destination = destItem
        destinationRequest.transportType = .automobile
        destinationRequest.requestsAlternateRoutes = true
        
        let directions = MKDirections(request: destinationRequest)
        directions.calculate {(response, error) in
            guard let response = response else {
                if let error = error {
                    print("something wrong")
                }
                return
            }
            let route = response.routes[0]
            
            let totalDistance = route.distance
            let travelTime = route.expectedTravelTime
            
            let distance = MKDistanceFormatter().string(fromDistance: totalDistance)
            
            self.traveTimeLabel.text = String(travelTime)
            
            
            self.distanciaLabel.text = distance
            
            self.mapa.addOverlay(route.polyline)
            self.mapa.setVisibleMapRect(route.polyline.boundingMapRect, animated: true)
        }
    }
    
    func getAddress(){
        
        let geoCoder = CLGeocoder()
        geoCoder.geocodeAddressString(local2!){
            (placemarks, error) in
            guard let placemarks = placemarks, let location = placemarks.first?.location
                else{
                    print("No location found")
                    return
            }
            print(location)
            self.mapThis(destinationCord: location.coordinate)
        }
    }
    
    func mapView(_ mapView: MKMapView, rendererFor overlay: MKOverlay) -> MKOverlayRenderer {
           let render = MKPolylineRenderer(overlay: overlay as! MKPolyline)
           render.strokeColor = .blue
           return render
       }

}
