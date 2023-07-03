import Foundation

public struct SiteMetadata: Codable, Hashable {
	public let description: String?
	public let html: String?
	public let image: String?
	public let title: String?

	public init(
		description: String? = nil,
		html: String? = nil,
		image: String? = nil,
		title: String? = nil
	) {
		self.description = description
		self.html = html
		self.image = image
		self.title = title
	}
}
