import Foundation

public struct GetSiteResponse: Codable, Hashable {
	public let siteView: SiteView
	public let admins: [PersonView]
	public let version: String
	public let myUser: MyUserInfo?
	public let allLanguages: [Language]
	public let discussionLanguages: [LanguageId]
	public let taglines: [Tagline]
	public let customEmojis: [CustomEmojiView]

	public init(
		siteView: SiteView,
		admins: [PersonView],
		version: String,
		myUser: MyUserInfo? = nil,
		allLanguages: [Language],
		discussionLanguages: [LanguageId],
		taglines: [Tagline],
		customEmojis: [CustomEmojiView]
	) {
		self.siteView = siteView
		self.admins = admins
		self.version = version
		self.myUser = myUser
		self.allLanguages = allLanguages
		self.discussionLanguages = discussionLanguages
		self.taglines = taglines
		self.customEmojis = customEmojis
	}
}
