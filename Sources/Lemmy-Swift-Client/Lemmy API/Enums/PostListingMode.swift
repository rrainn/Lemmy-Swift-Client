import Foundation

public enum PostListingMode: String, Codable, CustomStringConvertible, CaseIterable {
	case list = "List"
	case card = "Card"
	case smallCard = "SmallCard"

	public var description: String {
		return rawValue
	}
}
