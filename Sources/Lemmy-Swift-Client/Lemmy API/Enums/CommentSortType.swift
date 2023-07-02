import Foundation

public enum CommentSortType: String, Codable, CustomStringConvertible, CaseIterable {
	/// Comments sorted by a decaying rank.
	case hot = "Hot"
	/// Comments sorted by new.
	case new = "New"
	/// Comments sorted by old.
	case old = "Old"
	/// Comments sorted by top score.
	case top = "Top"

	public var description: String {
		return rawValue
	}
}
