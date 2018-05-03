//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import Foundation

public class FareBounds: Codable {

    public var description: String?

    public var displayName: String?

    public var displayOrder: Int?

    public var from: String?

    public var id: Int?

    public var isPopularFare: Bool?

    public var isPopularTravelCard: Bool?

    public var isTour: Bool?

    public var messages: [Message]?

    public var `operator`: String?

    public var routeCode: String?

    public var to: String?

    public var via: String?

    public init(description: String? = nil, displayName: String? = nil, displayOrder: Int? = nil, from: String? = nil, id: Int? = nil, isPopularFare: Bool? = nil, isPopularTravelCard: Bool? = nil, isTour: Bool? = nil, messages: [Message]? = nil, `operator`: String? = nil, routeCode: String? = nil, to: String? = nil, via: String? = nil) {
        self.description = description
        self.displayName = displayName
        self.displayOrder = displayOrder
        self.from = from
        self.id = id
        self.isPopularFare = isPopularFare
        self.isPopularTravelCard = isPopularTravelCard
        self.isTour = isTour
        self.messages = messages
        self.`operator` = `operator`
        self.routeCode = routeCode
        self.to = to
        self.via = via
    }

    private enum CodingKeys: String, CodingKey {
        case description
        case displayName
        case displayOrder
        case from
        case id
        case isPopularFare
        case isPopularTravelCard
        case isTour
        case messages
        case `operator` = "operator"
        case routeCode
        case to
        case via
    }

    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)

        description = try container.decodeIfPresent(.description)
        displayName = try container.decodeIfPresent(.displayName)
        displayOrder = try container.decodeIfPresent(.displayOrder)
        from = try container.decodeIfPresent(.from)
        id = try container.decodeIfPresent(.id)
        isPopularFare = try container.decodeIfPresent(.isPopularFare)
        isPopularTravelCard = try container.decodeIfPresent(.isPopularTravelCard)
        isTour = try container.decodeIfPresent(.isTour)
        messages = try container.decodeIfPresent(.messages)
        `operator` = try container.decodeIfPresent(.`operator`)
        routeCode = try container.decodeIfPresent(.routeCode)
        to = try container.decodeIfPresent(.to)
        via = try container.decodeIfPresent(.via)
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)

        try container.encode(description, forKey: .description)
        try container.encode(displayName, forKey: .displayName)
        try container.encode(displayOrder, forKey: .displayOrder)
        try container.encode(from, forKey: .from)
        try container.encode(id, forKey: .id)
        try container.encode(isPopularFare, forKey: .isPopularFare)
        try container.encode(isPopularTravelCard, forKey: .isPopularTravelCard)
        try container.encode(isTour, forKey: .isTour)
        try container.encode(messages, forKey: .messages)
        try container.encode(`operator`, forKey: .`operator`)
        try container.encode(routeCode, forKey: .routeCode)
        try container.encode(to, forKey: .to)
        try container.encode(via, forKey: .via)
    }
}