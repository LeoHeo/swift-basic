//: Playground - noun: a place where people can play

import UIKit

var name = ["Park", "Kim", "Heo"]
var age = [3, 4, 5, 6]
var height = [40, 50, 60, 70]

print(name[0], age[0], height[0])

struct Student {
    var name: String
    var age: Int
    var height: Int
    
    // func, computed property도 사용가능
}

var student1 = Student(name: "Heo", age: 3, height: 50)
var student2 = Student(name: "Choi ", age: 4, height: 60)

