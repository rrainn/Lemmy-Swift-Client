import Foundation

public enum ListingType: String, Codable, CustomStringConvertible {
	case all = "All"
	case community = "Community"
	case local = "Local"
	case subscribed = "Subscribed"

	public var description: String {
		rawValue
	}
}
