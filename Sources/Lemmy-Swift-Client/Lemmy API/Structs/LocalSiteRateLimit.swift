import Foundation

public struct LocalSiteRateLimit: Codable, Hashable {
	public let local_site_id: LocalSiteId?
	public let message: Int?
	public let message_per_second: Int?
	public let post: Int?
	public let post_per_second: Int?
	public let register: Int?
	public let register_per_second: Int?
	public let image: Int?
	public let image_per_second: Int?
	public let comment: Int?
	public let comment_per_second: Int?
	public let search: Int?
	public let search_per_second: Int?
	public let published: String?
	public let updated: String?
	public let import_user_settings: Int?
	public let import_user_settings_per_second: Int?

	public init(
		local_site_id: LocalSiteId? = nil,
		message: Int? = nil,
		message_per_second: Int? = nil,
		post: Int? = nil,
		post_per_second: Int? = nil,
		register: Int? = nil,
		register_per_second: Int? = nil,
		image: Int? = nil,
		image_per_second: Int? = nil,
		comment: Int? = nil,
		comment_per_second: Int? = nil,
		search: Int? = nil,
		search_per_second: Int? = nil,
		published: String? = nil,
		updated: String? = nil,
		import_user_settings: Int? = nil,
		import_user_settings_per_second: Int? = nil
	) {
		self.local_site_id = local_site_id
		self.message = message
		self.message_per_second = message_per_second
		self.post = post
		self.post_per_second = post_per_second
		self.register = register
		self.register_per_second = register_per_second
		self.image = image
		self.image_per_second = image_per_second
		self.comment = comment
		self.comment_per_second = comment_per_second
		self.search = search
		self.search_per_second = search_per_second
		self.published = published
		self.updated = updated
		self.import_user_settings = import_user_settings
		self.import_user_settings_per_second = import_user_settings_per_second
	}
}
