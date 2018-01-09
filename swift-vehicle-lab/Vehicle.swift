//
//  Vehicle.swift
//  swift-vehicle-lab
//
//  Created by Alla Gorik on 12/31/17.
//  Copyright © 2017 Flatiron School. All rights reserved.
//

import Foundation

class Vehicle{
    let name: String
    let weight: Double
    let maxSpeed: Double
    var speed: Double = 0.0
    var heading: Double = 0.0
//    {
//        didSet{
//            if(heading<0){
//                heading = 0.0
//            }
//            else if heading>360 {
//                heading = 360.0
//            }
//        }
//    }

    func checkHeading()  {
        if(heading<0){
            heading = 0.0
        }
        else if heading>360 {
            heading = 360.0
        }
    }
    
    init(name: String, weight: Double, maxSpeed:Double){
        self.name = name
        self.weight = weight
        self.maxSpeed = maxSpeed
    }
    
    func goFast(){
        speed = maxSpeed
    }
    
    func halt(){
        speed = 0.0
    }
    
    func accelerate(){
        speed += maxSpeed/10
        speed = (speed>maxSpeed) ? maxSpeed : speed
    }
    
    func decelerate(){
        speed-=maxSpeed/10
        speed = (speed<0) ? 0 : speed
    }
    
    func  turnRight(){
        if(speed>0){
            heading+=90.0
            speed /= 2
            checkHeading()
        }
    }
    
    func turnLeft(){
        if (speed>0) {
            heading-=90.0
            speed/=2
            checkHeading()
        }
    }
}
