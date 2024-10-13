import Foundation

public struct LocalSite: Codable, Identifiable, Hashable {
	public let id: LocalSiteId?
	public let site_id: SiteId?
	public let site_setup: Bool?
	public let enable_downvotes: Bool?
	public let enable_nsfw: Bool?
	public let community_creation_admin_only: Bool?
	public let require_email_verification: Bool?
	public let application_question: String?
	public let private_instance: Bool?
	public let default_theme: String?
	public let default_post_listing_type: ListingType?
	public let legal_information: String?
	public let hide_modlog_mod_names: Bool?
	public let application_email_admins: Bool?
	public let slur_filter_regex: String?
	public let actor_name_max_length: Int?
	public let federation_enabled: Bool?
	public let captcha_enabled: Bool?
	public let captcha_difficulty: String?
	public let published: String?
	public let updated: String?
	public let registration_mode: RegistrationMode?
	public let reports_email_admins: Bool?
	public let federation_signed_fetch: Bool?
	public let default_post_listing_mode: PostListingMode?
	public let default_sort_type: SortType?

	public init(
		id: LocalSiteId? = nil,
		site_id: SiteId? = nil,
		site_setup: Bool? = nil,
		enable_downvotes: Bool? = nil,
		enable_nsfw: Bool? = nil,
		community_creation_admin_only: Bool? = nil,
		require_email_verification: Bool? = nil,
		application_question: String? = nil,
		private_instance: Bool? = nil,
		default_theme: String? = nil,
		default_post_listing_type: ListingType? = nil,
		legal_information: String? = nil,
		hide_modlog_mod_names: Bool? = nil,
		application_email_admins: Bool? = nil,
		slur_filter_regex: String? = nil,
		actor_name_max_length: Int? = nil,
		federation_enabled: Bool? = nil,
		captcha_enabled: Bool? = nil,
		captcha_difficulty: String? = nil,
		published: String? = nil,
		updated: String? = nil,
		registration_mode: RegistrationMode? = nil,
		reports_email_admins: Bool? = nil,
		federation_signed_fetch: Bool? = nil,
		default_post_listing_mode: PostListingMode? = nil,
		default_sort_type: SortType? = nil
	) {
		self.id = id
		self.site_id = site_id
		self.site_setup = site_setup
		self.enable_downvotes = enable_downvotes
		self.enable_nsfw = enable_nsfw
		self.community_creation_admin_only = community_creation_admin_only
		self.require_email_verification = require_email_verification
		self.application_question = application_question
		self.private_instance = private_instance
		self.default_theme = default_theme
		self.default_post_listing_type = default_post_listing_type
		self.legal_information = legal_information
		self.hide_modlog_mod_names = hide_modlog_mod_names
		self.application_email_admins = application_email_admins
		self.slur_filter_regex = slur_filter_regex
		self.actor_name_max_length = actor_name_max_length
		self.federation_enabled = federation_enabled
		self.captcha_enabled = captcha_enabled
		self.captcha_difficulty = captcha_difficulty
		self.published = published
		self.updated = updated
		self.registration_mode = registration_mode
		self.reports_email_admins = reports_email_admins
		self.federation_signed_fetch = federation_signed_fetch
		self.default_post_listing_mode = default_post_listing_mode
		self.default_sort_type = default_sort_type
	}
}
