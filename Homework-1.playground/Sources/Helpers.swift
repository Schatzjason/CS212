import Foundation

public func generateRandomArrayOfIntsAndNils() -> [Int?] {
    let size = Int(arc4random() % 20)
    var array = [Int?]()
    var value: Int?
    
    for _ in 0...size {
        value = -10 + Int(arc4random() % 110)
        array.append(value! >= 0 ? value : nil)
    }
    
    return array
}

public func generateStringOrNil() -> String? {
    let value = -10 + Int(arc4random() % 30)
    let strings = ["Scarlet", "Zoom", "Agile", "Licorice", "Moonscape", "Library", "Mountain", "Submarine", "Indigo", "Camera", "Flashlight", "Birdcage", "Accelerate", "Tangerine", "Zipline", "Attic", "Algebra", "Water", "Highway", "Horizon", "Fresh", "Plateau", "Glacier"]
    
    let index = Int(arc4random()) % strings.count
    
    return value < 0 ? nil : strings[index]
}
