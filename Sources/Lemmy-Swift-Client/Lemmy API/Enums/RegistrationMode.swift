import Foundation

public enum RegistrationMode: String, Codable, CustomStringConvertible {
	case closed
	case open
	case requireApplication = "requireapplication"

	public var description: String {
		rawValue
	}
}
