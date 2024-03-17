import Foundation

public struct EditSiteRequest: APIRequest {
	public typealias Response = SiteResponse

	public static let httpMethod: HTTPMethod = .put
	public static let path: String = "/site"

	public let name: String?
	public let sidebar: String?
	public let description: String?
	public let icon: String?
	public let banner: String?
	public let enable_downvotes: Bool?
	public let enable_nsfw: Bool?
	public let community_creation_admin_only: Bool?
	public let require_email_verification: Bool?
	public let application_question: String?
	public let private_instance: Bool?
	public let default_theme: String?
	public let default_post_listing_type: ListingType?
	public let legal_information: String?
	public let application_email_admins: Bool?
	public let hide_modlog_mod_names: Bool?
	public let discussion_languages: [LanguageId]?
	public let slur_filter_regex: String?
	public let actor_name_max_length: Int?
	public let rate_limit_message: Int?
	public let rate_limit_message_per_second: Int?
	public let rate_limit_post: Int?
	public let rate_limit_post_per_second: Int?
	public let rate_limit_register: Int?
	public let rate_limit_register_per_second: Int?
	public let rate_limit_image: Int?
	public let rate_limit_image_per_second: Int?
	public let rate_limit_comment: Int?
	public let rate_limit_comment_per_second: Int?
	public let rate_limit_search: Int?
	public let rate_limit_search_per_second: Int?
	public let federation_enabled: Bool?
	public let federation_debug: Bool?
	public let captcha_enabled: Bool?
	public let captcha_difficulty: String?
	public let allowed_instances: [String]?
	public let blocked_instances: [String]?
	public let taglines: [String]?
	public let registration_mode: RegistrationMode?
	public let reports_email_admins: Bool?

	public init(
		name: String? = nil,
		sidebar: String? = nil,
		description: String? = nil,
		icon: String? = nil,
		banner: String? = nil,
		enable_downvotes: Bool? = nil,
		enable_nsfw: Bool? = nil,
		community_creation_admin_only: Bool? = nil,
		require_email_verification: Bool? = nil,
		application_question: String? = nil,
		private_instance: Bool? = nil,
		default_theme: String? = nil,
		default_post_listing_type: ListingType? = nil,
		legal_information: String? = nil,
		application_email_admins: Bool? = nil,
		hide_modlog_mod_names: Bool? = nil,
		discussion_languages: [LanguageId]? = nil,
		slur_filter_regex: String? = nil,
		actor_name_max_length: Int? = nil,
		rate_limit_message: Int? = nil,
		rate_limit_message_per_second: Int? = nil,
		rate_limit_post: Int? = nil,
		rate_limit_post_per_second: Int? = nil,
		rate_limit_register: Int? = nil,
		rate_limit_register_per_second: Int? = nil,
		rate_limit_image: Int? = nil,
		rate_limit_image_per_second: Int? = nil,
		rate_limit_comment: Int? = nil,
		rate_limit_comment_per_second: Int? = nil,
		rate_limit_search: Int? = nil,
		rate_limit_search_per_second: Int? = nil,
		federation_enabled: Bool? = nil,
		federation_debug: Bool? = nil,
		captcha_enabled: Bool? = nil,
		captcha_difficulty: String? = nil,
		allowed_instances: [String]? = nil,
		blocked_instances: [String]? = nil,
		taglines: [String]? = nil,
		registration_mode: RegistrationMode? = nil,
		reports_email_admins: Bool? = nil
	) {
		self.name = name
		self.sidebar = sidebar
		self.description = description
		self.icon = icon
		self.banner = banner
		self.enable_downvotes = enable_downvotes
		self.enable_nsfw = enable_nsfw
		self.community_creation_admin_only = community_creation_admin_only
		self.require_email_verification = require_email_verification
		self.application_question = application_question
		self.private_instance = private_instance
		self.default_theme = default_theme
		self.default_post_listing_type = default_post_listing_type
		self.legal_information = legal_information
		self.application_email_admins = application_email_admins
		self.hide_modlog_mod_names = hide_modlog_mod_names
		self.discussion_languages = discussion_languages
		self.slur_filter_regex = slur_filter_regex
		self.actor_name_max_length = actor_name_max_length
		self.rate_limit_message = rate_limit_message
		self.rate_limit_message_per_second = rate_limit_message_per_second
		self.rate_limit_post = rate_limit_post
		self.rate_limit_post_per_second = rate_limit_post_per_second
		self.rate_limit_register = rate_limit_register
		self.rate_limit_register_per_second = rate_limit_register_per_second
		self.rate_limit_image = rate_limit_image
		self.rate_limit_image_per_second = rate_limit_image_per_second
		self.rate_limit_comment = rate_limit_comment
		self.rate_limit_comment_per_second = rate_limit_comment_per_second
		self.rate_limit_search = rate_limit_search
		self.rate_limit_search_per_second = rate_limit_search_per_second
		self.federation_enabled = federation_enabled
		self.federation_debug = federation_debug
		self.captcha_enabled = captcha_enabled
		self.captcha_difficulty = captcha_difficulty
		self.allowed_instances = allowed_instances
		self.blocked_instances = blocked_instances
		self.taglines = taglines
		self.registration_mode = registration_mode
		self.reports_email_admins = reports_email_admins
	}
}
