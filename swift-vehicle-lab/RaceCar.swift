//
//  RaceCar.swift
//  swift-vehicle-lab
//
//  Created by Alla Gorik on 1/3/18.
//  Copyright © 2018 Flatiron School. All rights reserved.
//

import Foundation

class RaceCar : Car {
    
    let driver: String
    var sponsors: [String]
    
    init(name:String, weight: Double,
        maxSpeed: Double, transmission: String,
        cylinders: Int,
        
        milesPerGallon: Double,
        driver:String,
         sponsors:[String]
        //speed: Double,
        
        ){
        self.driver = driver
        self.sponsors = sponsors
        super.init(name: name, weight: weight, maxSpeed: maxSpeed, transmission:transmission, cylinders: cylinders, milesPerGallon: milesPerGallon
        )
    }
    
    func driftRight(){
         heading += 90.0
         speed = speed - speed/4
    }
    
    func driftLeft(){
         heading -= 90.0
         speed = speed - speed/4
    }
    
}
