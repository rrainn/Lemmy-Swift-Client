import Foundation

public enum ListingType: String, Codable, CustomStringConvertible, CaseIterable {
	case all = "All"
	case local = "Local"
	case subscribed = "Subscribed"
	case moderatorView = "ModeratorView"

	public var description: String {
		return rawValue
	}
}
