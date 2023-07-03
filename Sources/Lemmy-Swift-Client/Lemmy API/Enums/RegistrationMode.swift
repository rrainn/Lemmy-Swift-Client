import Foundation

public enum RegistrationMode: String, Codable, CustomStringConvertible, CaseIterable {
	case closed
	case open
	case requireApplication = "RequireApplication"

	public var description: String {
		return rawValue
	}
}
