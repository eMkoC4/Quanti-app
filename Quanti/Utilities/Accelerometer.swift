//
//  Gyroscope.swift
//  Quanti
//
//  Created by IvanQ on 20.06.2022.
//

import CoreMotion
import Foundation

func Accelerometer() -> Bool {
    
    let manager = CMMotionManager()
    manager.accelerometerUpdateInterval = 0.5
    manager.startAccelerometerUpdates()
    
    let data = manager.accelerometerData
    
    let x = data?.acceleration.x
    let y = data?.acceleration.y
    let z = data?.acceleration.z
    
//    Timer.scheduledTimer(withTimeInterval: 1, repeats: true) { _ in
//        if let data = manager.accelerometerData
//        {
//            var x = data.acceleration.x
//            var y = data.acceleration.y
//            var z = data.acceleration.z
//        }
//
//    {
    if x == 0 && y == 0 && z == 0 {
        return true
    } else {
        print("x: \(x), y: \(y), z: \(z)")
        return false
    }
}
