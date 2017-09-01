
class Rectangle {
    
    // Properties
    var height: Double = 0
    var width: Double = 0
    var x: Double
    var y: Double
    
    // Methods
    func contains(x: Double, y: Double) -> Bool {
        return !(x > (self.x + self.width)) || (x < self.x) ||
            (y > (self.y + self.height)) || (y < self.y)
    }
    
    func overlaps(other: Rectangle) -> Bool {
        
        return !self.contains(x: other.x, y: other.y) &&
            !self.contains(x: other.x, y: other.y + other.height) &&
            !self.contains(x: other.x + other.width, y: other.y) &&
            !self.contains(x: other.x + other.width, y: other.y + height) &&
            !other.contains(x: self.x, y: self.y) &&
            !other.contains(x: self.x, y: self.y + self.height) &&
            !other.contains(x: self.x + self.width, y: self.y) &&
            !other.contains(x: self.x + self.width, y: self.y + self.height)
    }
    
    func intersection(_ other: Rectangle) -> Rectangle? {
        
        if !self.overlaps(other: other) {
            return nil
        }
        
        // This is kind of bogus. 
        return Rectangle(x: 0, y: 0)
    }
    
    // Initializer
    
    init(x: Double, y: Double) {
        self.x = x
        self.y = y
    }
    
    init(x: Double, y: Double, height: Double, width: Double) {
        self.x = x
        self.y = y
        self.height = height
        self.width = width
    }
}


var r1 = Rectangle(x: 0, y: 0, height: 20, width: 10)
var r2 = Rectangle(x: 100, y: 100, height: 2000, width: 1000000)

r1.x = 0
r1.y = 0
r1.height = 10
r1.width = 20

r2.x = 20
r2.y = 1000
r2.width = 10000
r2.height = 1000000

var areaOfR1 = r1.height * r1.width

// set some r2 values

if r1.contains(x: 5, y: 5) {
    // do something.
}

if r2.contains(x: 5, y: 5) {
    // something else
}

if r1.overlaps(other: r2) {
    // change some colors..
}

if r2.overlaps(other: r1) {
    
}

var chancyRectangle = r1.intersection(r2)

if let r = chancyRectangle {
    if r.overlaps(other: r1) {
    }
}











