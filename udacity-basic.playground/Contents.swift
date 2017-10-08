
//: Playground - noun: a place where people can play

import UIKit

func shortNameForName(name: String) -> String {
  let lowerCaseName = name.lowercased()
  let vowelSet = CharacterSet(charactersIn: "aeiou")

  if let nameRange = lowerCaseName.rangeOfCharacter(from: vowelSet) {
    // 아래 방식은 swift 4 에서 deprecated
    // 'substring(from:)' is deprecated: Please use String slicing subscript with a 'partial range from' operator.
    // return String(lowerCaseName.substring(from: nameRange.lowerBound))

    // 그래서 아래 방식을 써야함
    return String(lowerCaseName[nameRange.lowerBound...])
  }
  return name
}

//// 한줄로
//func shortNameForName(로ame: String) -> String {
//  return String(name.characters.drop(while: {!"aeiou".characters.contains($0)}))
//}


//shortNameForName(name: "Taila")
//shortNameForName(name: "Nate")
//shortNameForName(name: "NCver")
//shortNameForName(name: "excavator")
//shortNameForName(name: "ccccccc")


let bananaFanaTemplate = [
  "<FULL_NAME>, <FULL_NAME>, Bo B<SHORT_NAME>",
  "Banana Fana Fo F<SHORT_NAME>",
  "Me My Mo M<SHORT_NAME>",
  "<FULL_NAME>"].joined(separator: "\n")

func lyricsForName(lyricsTemplate: String, fullName: String) -> String {
  let shortName = shortNameForName(name: fullName)
  
  let lyrics = lyricsTemplate
    .replacingOccurrences(of: "<FULL_NAME>", with: fullName)
    .replacingOccurrences(of: "<SHORT_NAME>", with: shortName)
  
  return lyrics
}

print(lyricsForName(lyricsTemplate: bananaFanaTemplate, fullName: "taila"))
print(lyricsForName(lyricsTemplate: bananaFanaTemplate, fullName: "Nate"))
