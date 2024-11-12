import Foundation

public struct ImageDetails: Codable, Hashable {
	public let link: String?
	public let width: Int?
	public let height: Int?
	public let content_type: String?

	public init(
		link: String? = nil,
		width: Int? = nil,
		height: Int? = nil,
		content_type: String? = nil
	) {
		self.link = link
		self.width = width
		self.height = height
		self.content_type = content_type
	}
}
