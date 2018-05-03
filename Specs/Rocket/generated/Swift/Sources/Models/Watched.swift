//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import Foundation

public class Watched: Codable {

    /** The last playhead position watched for the item. */
    public var position: Int

    public var firstWatchedDate: Date

    public var lastWatchedDate: Date

    /** The id of the item watched. */
    public var itemId: String?

    public init(position: Int, firstWatchedDate: Date, lastWatchedDate: Date, itemId: String? = nil) {
        self.position = position
        self.firstWatchedDate = firstWatchedDate
        self.lastWatchedDate = lastWatchedDate
        self.itemId = itemId
    }

    private enum CodingKeys: String, CodingKey {
        case position
        case firstWatchedDate
        case lastWatchedDate
        case itemId
    }

    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)

        position = try container.decode(.position)
        firstWatchedDate = try container.decode(.firstWatchedDate)
        lastWatchedDate = try container.decode(.lastWatchedDate)
        itemId = try container.decodeIfPresent(.itemId)
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)

        try container.encode(position, forKey: .position)
        try container.encode(firstWatchedDate, forKey: .firstWatchedDate)
        try container.encode(lastWatchedDate, forKey: .lastWatchedDate)
        try container.encode(itemId, forKey: .itemId)
    }
}