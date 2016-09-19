//: Playground - noun: a place where people can play

import UIKit

class Optional {
    var optionalString:String? = "Hello" // nil값으로 초기화
    
    func hello() {
        print(optionalString) // unwrapping
    }
}

let option = Optional()
option.hello()