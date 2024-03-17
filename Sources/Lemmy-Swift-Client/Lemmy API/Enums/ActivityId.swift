import Foundation

public enum ActivityId: String, Codable, CustomStringConvertible, CaseIterable {

	public var description: String {
		return rawValue
	}
}
