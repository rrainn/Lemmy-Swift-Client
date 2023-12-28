import Foundation

public enum CommentSortType: String, Codable, CustomStringConvertible, CaseIterable {
	case hot = "Hot"
	case top = "Top"
	case new = "New"
	case old = "Old"
	case controversial = "Controversial"

	public var description: String {
		return rawValue
	}
}
