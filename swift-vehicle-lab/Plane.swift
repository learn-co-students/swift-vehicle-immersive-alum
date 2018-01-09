//
//  Plane.swift
//  swift-vehicle-lab
//
//  Created by Alla Gorik on 1/3/18.
//  Copyright © 2018 Flatiron School. All rights reserved.
//

import Foundation

class Plane : Vehicle{
    let maxAltitude: Double
    var altitude: Double = 0
    var inFlight: Bool{
        return speed>0 && altitude>0
    }
    
    
     init(name: String, weight: Double, maxSpeed: Double, maxAltitude:Double) {
        self.maxAltitude = maxAltitude
        //self.altitude = altitude
        
        super.init(name: name, weight: weight, maxSpeed: maxSpeed)
    }
    
    func takeoff(){
        if self.inFlight != true{
            speed = maxSpeed/10
            altitude = maxAltitude/10
        }
    }
    
    func land(){
        speed = 0.0
        altitude = 0.0
    }
    
    func climb(){
        if inFlight{
            altitude += maxAltitude/10
            altitude = (altitude>maxAltitude) ? maxAltitude : altitude
        }
    }
    
    func dive(){
        altitude -= maxAltitude/10
        altitude = (altitude<0) ? 0 : altitude
    }
    
    func bankRight(){
        heading+=45
        speed-=(speed/10)
        checkHeading()
    }
    
    func bankLeft(){
        heading-=45
        speed-=(speed/10)
        checkHeading()
    }
    
}
