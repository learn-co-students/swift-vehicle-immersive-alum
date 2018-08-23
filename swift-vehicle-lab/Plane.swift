//
//  Plane.swift
//  swift-vehicle-lab
//
//  Created by Steven McGrath on 8/23/18.
//  Copyright © 2018 Flatiron School. All rights reserved.
//

import Foundation

class Plane: Vehicle {
    let maxAltitude: Double
    var altitude: Double = 0
    var inFlight: Bool {
        if altitude > 0 && speed > 0 {
            return true
        }
        return false
    }
    
    init(name: String, weight: Double, maxSpeed: Double, maxAltitude: Double) {
        self.maxAltitude = maxAltitude
        super.init(name: name, weight: weight, maxSpeed: maxSpeed)
    }
    
    func takeoff() {
        if !inFlight {
            speed = maxSpeed / 10
            altitude = maxAltitude / 10
        }
    }
    
    func land() {
        if inFlight {
            speed = 0
            altitude = 0
        }
    }
    
    func climb() {
        if inFlight {
            altitude += maxAltitude / 10
            if altitude > maxAltitude {
                altitude = maxAltitude
            }
            super.decelerate()
        }
    }
    
    func dive() {
        if altitude != 0 {
            altitude -= maxAltitude / 10
            if altitude < 0 {
                altitude = 0
            }
            super.accelerate()
        }
    }
    
    func bankRight() {
        if inFlight {
            heading = (heading + 45).truncatingRemainder(dividingBy: 360)
            speed = speed * 0.9
        }
    }
    
    func bankLeft() {
        if inFlight {
            heading = (heading + 315).truncatingRemainder(dividingBy: 360)
            speed = speed * 0.9
        }
    }
}
