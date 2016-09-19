//: Playground - noun: a place where people can play

import UIKit


/*----------
 배열 선언방법
-----------*/
//var comment = [String]()
//var comment: Array<String> = []
var comment2:[String] = []

/*----------
 배열에 값 추가하기
 -----------*/
comment2.append("Anna")
comment2.append("Alex")

print(comment2)

// literal
var comment3 = ["Anna", "Alex", "Brian", "Jack"]

comment3 += ["Jin"]
comment3 += ["Choi"]
comment3 += ["Kim"]

/*----------
 배열에 값 수정하기
 -----------*/
print(comment3[1])

comment3[1] = "Tim"

print(comment3[1])

/*----------
 let으로 선언한건 수정 불가
 -----------*/
// Immutable Array
let comment4 = ["Anna", "Alex", "Brian", "Jack"]

// comment4 is let constant Error
//comment4 += ["Choi"]

print(comment4)