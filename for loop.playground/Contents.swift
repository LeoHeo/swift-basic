//: Playground - noun: a place where people can play

import UIKit

var age:Int = 0

age += 1

print(age)

while age < 5 {
    age += 1
    print(age)
}

for _ in 1...5 {
    print(5)
}

for number in 1...5 {
    print(number)
}

for name in ["Anna", "Alex", "Brian"] {
    print("hello \(name)")
}

for (animal, legs) in ["snake": 0, "cheetah": 4] {
    print("\(animal)'s have \(legs) legs.")
}