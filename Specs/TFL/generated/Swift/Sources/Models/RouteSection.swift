//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import Foundation

public class RouteSection: Codable {

    /** eg: Destination Name */
    public var destinationName: String?

    /** eg: N or S or I or O */
    public var direction: String?

    /** The Id of the route */
    public var id: String?

    /** The Id of the Line */
    public var lineId: String?

    /** eg: Path coordindates */
    public var lineString: String?

    /** Name such as "72" */
    public var name: String?

    /** eg: Origination Name */
    public var originationName: String?

    /** The route code */
    public var routeCode: String?

    public var routeSectionNaptanEntrySequence: [RouteSectionNaptanEntrySequence]?

    public init(destinationName: String? = nil, direction: String? = nil, id: String? = nil, lineId: String? = nil, lineString: String? = nil, name: String? = nil, originationName: String? = nil, routeCode: String? = nil, routeSectionNaptanEntrySequence: [RouteSectionNaptanEntrySequence]? = nil) {
        self.destinationName = destinationName
        self.direction = direction
        self.id = id
        self.lineId = lineId
        self.lineString = lineString
        self.name = name
        self.originationName = originationName
        self.routeCode = routeCode
        self.routeSectionNaptanEntrySequence = routeSectionNaptanEntrySequence
    }

    private enum CodingKeys: String, CodingKey {
        case destinationName
        case direction
        case id
        case lineId
        case lineString
        case name
        case originationName
        case routeCode
        case routeSectionNaptanEntrySequence
    }

    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)

        destinationName = try container.decodeIfPresent(.destinationName)
        direction = try container.decodeIfPresent(.direction)
        id = try container.decodeIfPresent(.id)
        lineId = try container.decodeIfPresent(.lineId)
        lineString = try container.decodeIfPresent(.lineString)
        name = try container.decodeIfPresent(.name)
        originationName = try container.decodeIfPresent(.originationName)
        routeCode = try container.decodeIfPresent(.routeCode)
        routeSectionNaptanEntrySequence = try container.decodeIfPresent(.routeSectionNaptanEntrySequence)
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)

        try container.encode(destinationName, forKey: .destinationName)
        try container.encode(direction, forKey: .direction)
        try container.encode(id, forKey: .id)
        try container.encode(lineId, forKey: .lineId)
        try container.encode(lineString, forKey: .lineString)
        try container.encode(name, forKey: .name)
        try container.encode(originationName, forKey: .originationName)
        try container.encode(routeCode, forKey: .routeCode)
        try container.encode(routeSectionNaptanEntrySequence, forKey: .routeSectionNaptanEntrySequence)
    }
}