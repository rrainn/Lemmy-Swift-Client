import Foundation

public enum PostFeatureType: String, Codable, CustomStringConvertible, CaseIterable {
	case community = "Community"
	case local = "Local"

	public var description: String {
		return rawValue
	}
}
