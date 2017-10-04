//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import Foundation
import JSONUtilities

public class GeoPoint: JSONDecodable, JSONEncodable, PrettyPrintable {

    public var lat: Double

    public var lon: Double

    public init(lat: Double, lon: Double) {
        self.lat = lat
        self.lon = lon
    }

    public required init(jsonDictionary: JSONDictionary) throws {
        lat = try jsonDictionary.json(atKeyPath: "lat")
        lon = try jsonDictionary.json(atKeyPath: "lon")
    }

    public func encode() -> JSONDictionary {
        var dictionary: JSONDictionary = [:]
        dictionary["lat"] = lat
        dictionary["lon"] = lon
        return dictionary
    }

    /// pretty prints all properties including nested models
    public var prettyPrinted: String {
        return "\(Swift.type(of: self)):\n\(encode().recursivePrint(indentIndex: 1))"
    }
}