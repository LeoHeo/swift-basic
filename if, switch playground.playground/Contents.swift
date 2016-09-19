//: Playground - noun: a place where people can play

import UIKit

let age = 5

switch age {
case 0, 1, 2: // 여러개를 지정할때
    print("age")
case 3...19: // 실제로 연속된걸 지정할때
    print("3~19")
default:
    print("default")
}

let vagetable = "red abc aaa ddd pepper"

switch vagetable {
case "celery":
    print("celery")
case "cucumber", "watercress":
    print("cucumber, watercress")
case let x where x.hasSuffix("pepper"): // pepper이 있으면
    print("\(x)")
default:
    print("other")
}