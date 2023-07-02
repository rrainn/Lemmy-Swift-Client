import Foundation

public struct GetSiteRequest: APIRequest {
	public typealias Response = GetSiteResponse

	public static let httpMethod: HTTPMethod = .get
	public static let path: String = "/site"

	public let auth: String?

	public init(auth: String? = nil) {
		self.auth = auth
	}
}

public struct GetSiteResponse: APIResponse {
	public let admins: [PersonViewSafe]
	public let all_languages: [Language]
	public let discussion_languages: [Int]
	public let federated_instances: FederatedInstances?
	public let my_user: MyUserInfo?
	public let online: Int?
	public let site_view: SiteView
	public let taglines: [Tagline]?
	public let version: String

	public init(
		admins: [PersonViewSafe],
		all_languages: [Language],
		discussion_languages: [Int],
		federated_instances: FederatedInstances? = nil,
		my_user: MyUserInfo? = nil,
		online: Int?,
		site_view: SiteView,
		taglines: [Tagline]? = nil,
		version: String
	) {
		self.admins = admins
		self.all_languages = all_languages
		self.discussion_languages = discussion_languages
		self.federated_instances = federated_instances
		self.my_user = my_user
		self.online = online
		self.site_view = site_view
		self.taglines = taglines
		self.version = version
	}
}
