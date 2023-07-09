import Foundation

public struct GetSiteRequest: APIRequest {
	public typealias Response = GetSiteResponse

	public static let httpMethod: HTTPMethod = .get
	public static let path: String = "/site"

	public let auth: String?

	public init(
		auth: String? = nil
	) {
		self.auth = auth
	}
}

public struct GetSiteResponse: APIResponse {
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
