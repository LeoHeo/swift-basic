//: Playground - noun: a place where people can play

enum HeightError: Error {
  case maxHeight
  case minHeight
}

func checkHeightError(height: Int)  throws {
  if height > 200 {
    throw HeightError.maxHeight
  } else if height < 100 {
    throw HeightError.minHeight
  } else {
    print("cool!")
  }
}

do {
  try checkHeightError(height: 120)
} catch HeightError.maxHeight {
  print("You are too tall")
} catch HeightError.minHeight {
  print("You are too short")
}

enum NameError: Error {
  case noName
}

class Course {
  var name: String
  
  init(name: String) throws {
    if name.isEmpty {
      throw NameError.noName
    } else {
      self.name = name
      print("you've created an object")
    }
  }
}

do {
  let myCourse = try Course(name: "")
} catch NameError.noName {
  print("nams is required")
}