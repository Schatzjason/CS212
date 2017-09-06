
import Foundation

class Counter {
    
    private var _value: Int
    
    var value: Int {
        get {
            return _value
        }
    }
    
    init(initialValue: Int) {
        _value = initialValue
    }
    
    func increment() {
        _value += 1
    }
}
