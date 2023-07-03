import Foundation

public enum RegistrationMode: String, Codable, CustomStringConvertible, CaseIterable {
	case closed = "Closed"
	case open = "Open"
	case requireApplication = "RequireApplication"

	public var description: String {
		return rawValue
	}
}
