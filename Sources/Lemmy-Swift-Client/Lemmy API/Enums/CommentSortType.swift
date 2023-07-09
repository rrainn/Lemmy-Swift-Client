import Foundation

public enum CommentSortType: String, Codable, CustomStringConvertible, CaseIterable {
	case hot = "Hot"
	case top = "Top"
	case new = "New"
	case old = "Old"

	public var description: String {
		return rawValue
	}
}
