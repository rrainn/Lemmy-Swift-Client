import Foundation

public struct LocalSiteRateLimit: Codable, Hashable {
	public let localSiteId: LocalSiteId
	public let message: Int
	public let messagePerSecond: Int
	public let post: Int
	public let postPerSecond: Int
	public let register: Int
	public let registerPerSecond: Int
	public let image: Int
	public let imagePerSecond: Int
	public let comment: Int
	public let commentPerSecond: Int
	public let search: Int
	public let searchPerSecond: Int
	public let published: String
	public let updated: String?
	public let importUserSettings: Int
	public let importUserSettingsPerSecond: Int

	public init(
		localSiteId: LocalSiteId,
		message: Int,
		messagePerSecond: Int,
		post: Int,
		postPerSecond: Int,
		register: Int,
		registerPerSecond: Int,
		image: Int,
		imagePerSecond: Int,
		comment: Int,
		commentPerSecond: Int,
		search: Int,
		searchPerSecond: Int,
		published: String,
		updated: String? = nil,
		importUserSettings: Int,
		importUserSettingsPerSecond: Int
	) {
		self.localSiteId = localSiteId
		self.message = message
		self.messagePerSecond = messagePerSecond
		self.post = post
		self.postPerSecond = postPerSecond
		self.register = register
		self.registerPerSecond = registerPerSecond
		self.image = image
		self.imagePerSecond = imagePerSecond
		self.comment = comment
		self.commentPerSecond = commentPerSecond
		self.search = search
		self.searchPerSecond = searchPerSecond
		self.published = published
		self.updated = updated
		self.importUserSettings = importUserSettings
		self.importUserSettingsPerSecond = importUserSettingsPerSecond
	}
}
