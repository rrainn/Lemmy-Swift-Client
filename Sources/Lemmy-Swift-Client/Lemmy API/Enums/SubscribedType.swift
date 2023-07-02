import Foundation

public enum SubscribedType: String, Codable, CustomStringConvertible, CaseIterable {
	case notSubscribed = "NotSubscribed"
	case pending = "Pending"
	case subscribed = "Subscribed"

	public var description: String {
		return rawValue
	}
}
