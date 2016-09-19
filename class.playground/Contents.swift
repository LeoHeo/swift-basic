//: Playground - noun: a place where people can play

import UIKit

class Vehicle {
    var currentSpeed = 0.0 // stored property
    var description: String { // computed property
        return "traveling at \(currentSpeed) miles per hour"
    }
    
    func makeNoise() {
        print("noiseless")
    }
}

let someVehicle = Vehicle()
someVehicle.currentSpeed = 1.0
print("Vehicle : \(someVehicle.description)")

class Bicycle: Vehicle {
    var hasBasket = false
}

class Tandem: Bicycle {
    var currentNumberOfPassenger = 0
    override var description: String { // override할때 사용
        return "Tandem have basket \(hasBasket) traveling at \(currentSpeed) miles per hour"
    }
}

let tandem = Tandem()
tandem.hasBasket = true
print(tandem.description)

class Train: Vehicle {
    override func makeNoise() {
        print("Choo Choo")
    }
}

//let tandem = Tandem()
tandem.hasBasket = true
tandem.currentNumberOfPassenger = 5
print(tandem.currentNumberOfPassenger)

let train = Train()
train.makeNoise()

class Car: Vehicle {
    var gear = 1
    
    override var description: String {
        return super.description + " in gear \(gear)"
    }
}

class StepCounter {
    var totalSteps: Int = 0 {
        /*
         값이 저장되기 전에 호출
         default parameter로 newValue를 가지는데
         개발자가 이름변경도 가능
         
         willSet {
            print("\(newValue)")
         }
         
         willSet(newTotalSteps) {
            print("\(newTotalSteps)")
         }
        */
        willSet(newTotalSteps) {
            print("About to set totalSteps to \(newTotalSteps)")
        }
        /*
         값이 저장된 후 호출
         default parameter로 oldValue를 가지는데
         개발자가 이름변경도 가능
         
         didSet {
            print("\(oldValue)")
         }
         
         didSet(oldTotalSteps) {
            print("\(oldTotalSteps)")
         }
         */
        
        didSet {
            if totalSteps > oldValue {
                print("Added \(totalSteps - oldValue) steps")
            }
        }
    }
}

let stepCounter = StepCounter()
print("Default totalSteps : \(stepCounter.totalSteps)")
stepCounter.totalSteps = 200
stepCounter.totalSteps = 150
stepCounter.totalSteps = 360
stepCounter.totalSteps = 896