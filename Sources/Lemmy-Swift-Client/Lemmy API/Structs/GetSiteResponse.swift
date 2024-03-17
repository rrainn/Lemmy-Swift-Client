import Foundation

public struct GetSiteResponse: Codable, Hashable {
	public let site_view: SiteView
	public let admins: [PersonView]
	public let version: String
	public let my_user: MyUserInfo?
	public let all_languages: [Language]
	public let discussion_languages: [LanguageId]
	public let taglines: [Tagline]
	public let custom_emojis: [CustomEmojiView]

	public init(
		site_view: SiteView,
		admins: [PersonView],
		version: String,
		my_user: MyUserInfo? = nil,
		all_languages: [Language],
		discussion_languages: [LanguageId],
		taglines: [Tagline],
		custom_emojis: [CustomEmojiView]
	) {
		self.site_view = site_view
		self.admins = admins
		self.version = version
		self.my_user = my_user
		self.all_languages = all_languages
		self.discussion_languages = discussion_languages
		self.taglines = taglines
		self.custom_emojis = custom_emojis
	}
}
