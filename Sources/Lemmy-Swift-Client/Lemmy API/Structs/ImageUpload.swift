import Foundation

public struct ImageUpload: Codable, Hashable {
	public let localUserId: LocalUserId
	public let pictrsAlias: String
	public let pictrsDeleteToken: String
	public let published: String

	public init(
		localUserId: LocalUserId,
		pictrsAlias: String,
		pictrsDeleteToken: String,
		published: String
	) {
		self.localUserId = localUserId
		self.pictrsAlias = pictrsAlias
		self.pictrsDeleteToken = pictrsDeleteToken
		self.published = published
	}
}
