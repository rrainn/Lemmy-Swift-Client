import Foundation

public enum SubscribedType: String, Codable, CustomStringConvertible {
	case notSubscribed = "NotSubscribed"
	case pending = "Pending"
	case subscribed = "Subscribed"

	public var description: String {
		rawValue
	}
}
