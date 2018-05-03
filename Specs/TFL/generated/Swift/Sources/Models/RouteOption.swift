//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import Foundation

public class RouteOption: Codable {

    public var directions: [String]?

    /** The Id of the route */
    public var id: String?

    /** The line identifier (e.g. District Line), from where you can obtain line status information e.g. the rainbow board status "good service". */
    public var lineIdentifier: Identifier?

    /** Name such as "72" */
    public var name: String?

    public init(directions: [String]? = nil, id: String? = nil, lineIdentifier: Identifier? = nil, name: String? = nil) {
        self.directions = directions
        self.id = id
        self.lineIdentifier = lineIdentifier
        self.name = name
    }

    private enum CodingKeys: String, CodingKey {
        case directions
        case id
        case lineIdentifier
        case name
    }

    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)

        directions = try container.decodeIfPresent(.directions)
        id = try container.decodeIfPresent(.id)
        lineIdentifier = try container.decodeIfPresent(.lineIdentifier)
        name = try container.decodeIfPresent(.name)
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)

        try container.encode(directions, forKey: .directions)
        try container.encode(id, forKey: .id)
        try container.encode(lineIdentifier, forKey: .lineIdentifier)
        try container.encode(name, forKey: .name)
    }
}