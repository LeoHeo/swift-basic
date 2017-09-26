//: Playground - noun: a place where people can play

import UIKit


// Closure
var numbers = [20, 19, 7, 12]
numbers.map({
    (number: Int) -> Int in
    let result = 3 * number
    print(result) // 수행당시에는 바뀜
    return result
});

print(numbers) // 다시 출력 해보면 그대로

// closure Type already known
let mappedNumbers = numbers.map({ number in 3 * number})
print(mappedNumbers)


/*
 You can refer to parameters by number instead of by name—this 
 approach is especially useful in 
 very short closures
 */
//let sortedNumbers = numbers.sorted{ $0 < $1} // 오름차순
let sortedNumbers = numbers.sorted{ $0 > $1} // 내림차순
print(sortedNumbers)
