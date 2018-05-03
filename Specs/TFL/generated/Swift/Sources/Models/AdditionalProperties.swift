//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import Foundation

public class AdditionalProperties: Codable {

    public var category: String?

    public var key: String?

    public var modified: Date?

    public var sourceSystemKey: String?

    public var value: String?

    public init(category: String? = nil, key: String? = nil, modified: Date? = nil, sourceSystemKey: String? = nil, value: String? = nil) {
        self.category = category
        self.key = key
        self.modified = modified
        self.sourceSystemKey = sourceSystemKey
        self.value = value
    }

    private enum CodingKeys: String, CodingKey {
        case category
        case key
        case modified
        case sourceSystemKey
        case value
    }

    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)

        category = try container.decodeIfPresent(.category)
        key = try container.decodeIfPresent(.key)
        modified = try container.decodeIfPresent(.modified)
        sourceSystemKey = try container.decodeIfPresent(.sourceSystemKey)
        value = try container.decodeIfPresent(.value)
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)

        try container.encode(category, forKey: .category)
        try container.encode(key, forKey: .key)
        try container.encode(modified, forKey: .modified)
        try container.encode(sourceSystemKey, forKey: .sourceSystemKey)
        try container.encode(value, forKey: .value)
    }
}