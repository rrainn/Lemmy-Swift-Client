import Foundation

public enum CommunityVisibility: String, Codable, CustomStringConvertible, CaseIterable {
	case public = "Public"
	case localOnly = "LocalOnly"

	public var description: String {
		return rawValue
	}
}
