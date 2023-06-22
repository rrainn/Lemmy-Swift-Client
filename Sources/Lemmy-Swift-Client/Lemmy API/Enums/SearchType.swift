import Foundation

public enum SearchType: String, Codable, CustomStringConvertible {
	case all = "All"
	case comments = "Comments"
	case communities = "Communities"
	case posts = "Posts"
	case url = "Url"
	case users = "Users"

	public var description: String {
		rawValue
	}
}
