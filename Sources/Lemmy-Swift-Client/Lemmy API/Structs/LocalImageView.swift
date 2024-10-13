import Foundation

public struct LocalImageView: Codable, Hashable {
	public let local_image: LocalImage?
	public let person: Person?

	public init(
		local_image: LocalImage? = nil,
		person: Person? = nil
	) {
		self.local_image = local_image
		self.person = person
	}
}
