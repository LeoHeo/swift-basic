//: Playground - noun: a place where people can play

import UIKit

/*-----------
 return 없는 함수
 ------------*/
func sayHello() {
    print("Hello")
}

sayHello() // Hello

/*---------------------
 argumentLabel를 사용
 라이브러리 만들때 많이 사용
 내부랑 외부랑 변수이름 다르게
 ---------------------*/
func sayHello2(insertYourName name: String) {
    print("Hello \(name)")
}

/*------------------------
 `_`로 `namedParameter`
 즉, `parameter name` 지정안함
 -------------------------*/
sayHello2(insertYourName: "LeoHeo") // Hello LeoHeo

func sayHello3(name: String, _ age: Int) -> String {
    return "\(name) is \(age) years old."
}

print(sayHello3(name: "LeoHeo", 6)) // LeoHeo is 6 years old.

/*-------------------------------------
 Arguments, return, default value 있을때
 --------------------------------------*/
func greet(person: String = "Kim") -> String {
    let greeting = "Hello \(person)!!"
    return greeting
}

print(greet(person: "LeoHeo")) // Hello LeoHeo!!
print(greet()) // Hello Kim!!

/*--------------------------------
 Arguments가 있고 return값이 여러개 일때
 ---------------------------------*/
func minMax(array: [Int]) -> (min: Int, max: Int) {
    var currentMin = array[0]
    var currentMax = array[0]
    
    // 1..<array.count는 array의 count만큼 반복
    for value in array[1..<array.count] {
        if value < currentMin {
            currentMin = value
        } else if value > currentMax {
            currentMax = value
        }
    }
    
    return (currentMin, currentMax)
}

let bounds = minMax(array: [8, -6, 2, 109, 3, 71])
print("min is \(bounds.min) and max is \(bounds.max)") // min is -6 and max is 109


/*--------------------------------
 Argument 개수가 정해지지 않았을때
 ---------------------------------*/
func sum(numbers: Int...) -> Int {
    var sum = 0
    for number in numbers {
        sum += number
    }
    return sum
}

print(sum())
print(sum(numbers: 1, 2))