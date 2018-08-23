//
//  Jet.swift
//  swift-vehicle-lab
//
//  Created by Steven McGrath on 8/23/18.
//  Copyright © 2018 Flatiron School. All rights reserved.
//

import Foundation

class Jet: Plane {
    override func climb() {
        if inFlight {
            altitude += maxAltitude / 5
            if altitude > maxAltitude {
                altitude = maxAltitude
            }
            super.decelerate()
        }
    }
    
    override func dive() {
        if inFlight{
            altitude -= maxAltitude / 5
            if altitude < 0 {
                altitude = 0
            }
            super.accelerate()
        }
    }
    
    func afterburner() {
        if inFlight && speed == maxSpeed {
            speed = maxSpeed * 2
        }
    }
}
