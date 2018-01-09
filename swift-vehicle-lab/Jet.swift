//
//  Jet.swift
//  swift-vehicle-lab
//
//  Created by Alla Gorik on 1/4/18.
//  Copyright © 2018 Flatiron School. All rights reserved.
//

import Foundation
class Jet: Plane {
    override func climb(){
        if(inFlight){
            altitude += maxAltitude/5
        }
        altitude = (altitude>maxAltitude) ? maxAltitude: altitude;
    }
    
    override func dive(){
        altitude -= maxAltitude/5
        altitude = (altitude<0) ? 0: altitude
    }
    
    func afterburner(){
        if inFlight && speed==maxSpeed{
            speed = 2*maxSpeed
        }
    }
}
