import Foundation

public struct SiteMetadata: Codable, Hashable {
	public let title: String?
	public let description: String?
	public let image: String?
	public let embedVideoUrl: String?

	public init(
		title: String? = nil,
		description: String? = nil,
		image: String? = nil,
		embedVideoUrl: String? = nil
	) {
		self.title = title
		self.description = description
		self.image = image
		self.embedVideoUrl = embedVideoUrl
	}
}
