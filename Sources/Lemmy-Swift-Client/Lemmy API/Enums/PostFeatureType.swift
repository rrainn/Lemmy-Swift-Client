import Foundation

public enum PostFeatureType: String, Codable, CustomStringConvertible, CaseIterable {
	case local = "Local"
	case community = "Community"

	public var description: String {
		return rawValue
	}
}
