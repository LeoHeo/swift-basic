//: Playground - noun: a place where people can play

import UIKit

class Human {
  func introduce () {
    print("Hi, I'm human")
  }
}

class Korean: Human {
  func singGangNamStyle () {
    print("Oppa Gangnam Style")
  }
}

let leo = Korean()
leo.introduce()
leo.singGangNamStyle()


//: Type Casting
let newLeo = leo as Human
newLeo.introduce() // upcating

//: -> as -> Upcasting(Always Works)

class Japanes: Human {
  func ninja () {
    print("Shh....")
  }
}

//: Downcasting 
//: Explict/Force Casting
//: Downcasting only occurs after upcasting
//: Downcasting ---> specific

var name = "Leo" as Any
var age = 20 as Any

var anyArray = [name, age]

let newValue = anyArray[1] as! Int
// let anotherValue = anyArray[1] as! String

// Implicit Downcasting (safe)
let newnewValue = anyArray[1] as? Int


// 그럼 이게 어떨때 유용하냐?
let shion = Japanes()
let lee = Korean()
let kenji = Japanes()
let park = Korean()

let humans: [Human] = [shion, lee, kenji, park]
humans[0].introduce() // upcasting Human doesn't have ninja

for human in humans {
  if let korean = human as? Korean {
    korean.singGangNamStyle()
  }
  
  if let japanese = human as? Japanes {
    japanese.ninja()
  }
}


// 그럼 실제로 어떤상황에서 쓰이나

let loginButton = UIButton()
let loginMessage = UILabel()
let loginView = UIView()

let UIComponents = [loginButton, loginMessage, loginView]

for component in UIComponents {
  if let button = component as? UIButton {
    
  }
  
  if let message = component as? UILabel {
    
  }
  
  if let view = component as? UIView {
    
  }
}
