import Foundation

public struct Color: Asset {
    
    /// Raw name of the color
    public var name: String
    
    /// Platform-specific color
    public let platform: Platform?
    
    /// Color components, Double value from 0 to 1
    public let red, green, blue, alpha: Double
    
    public init(name: String, platform: Platform? = nil, r: Double, g: Double, b: Double, a: Double) {
        self.name = name
        self.platform = platform
        self.red = r
        self.green = g
        self.blue = b
        self.alpha = a
    }
    
    // MARK: Hashable
    
    public static func == (lhs: Color, rhs: Color) -> Bool {
        return lhs.name == rhs.name
    }
    
    public func hash(into hasher: inout Hasher) {
        hasher.combine(name)
    }
    
}
