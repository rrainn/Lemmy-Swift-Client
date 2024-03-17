import Foundation

public struct PersonBlockView: Codable, Hashable {
	public let person: Person?
	public let target: Person?

	public init(
		person: Person? = nil,
		target: Person? = nil
	) {
		self.person = person
		self.target = target
	}
}
