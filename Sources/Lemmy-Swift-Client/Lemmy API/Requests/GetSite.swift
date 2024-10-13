public struct GetSiteRequest: APIRequest {
	public typealias Response = GetSiteResponse

	public static let httpMethod: HTTPMethod = .get
	public static let path: String = "/site"
	
	public init() {}
}

public struct GetSiteResponse: APIResponse {
	public let site_view: SiteView?
	public let admins: [PersonView]?
	public let version: String?
	public let my_user: MyUserInfo?
	public let all_languages: [Language]?
	public let discussion_languages: [LanguageId]?
	public let taglines: [Tagline]?
	public let custom_emojis: [CustomEmojiView]?
	public let blocked_urls: [LocalSiteUrlBlocklist]?

	public init(
		site_view: SiteView? = nil,
		admins: [PersonView]? = nil,
		version: String? = nil,
		my_user: MyUserInfo? = nil,
		all_languages: [Language]? = nil,
		discussion_languages: [LanguageId]? = nil,
		taglines: [Tagline]? = nil,
		custom_emojis: [CustomEmojiView]? = nil,
		blocked_urls: [LocalSiteUrlBlocklist]? = nil
	) {
		self.site_view = site_view
		self.admins = admins
		self.version = version
		self.my_user = my_user
		self.all_languages = all_languages
		self.discussion_languages = discussion_languages
		self.taglines = taglines
		self.custom_emojis = custom_emojis
		self.blocked_urls = blocked_urls
	}
}
