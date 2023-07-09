import Foundation

public enum SubscribedType: String, Codable, CustomStringConvertible, CaseIterable {
	case subscribed = "Subscribed"
	case notSubscribed = "NotSubscribed"
	case pending = "Pending"

	public var description: String {
		return rawValue
	}
}
