import Foundation

public enum PostFeatureType: String, Codable, CustomStringConvertible {
	case community = "Community"
	case local = "Local"

	public var description: String {
		rawValue
	}
}
