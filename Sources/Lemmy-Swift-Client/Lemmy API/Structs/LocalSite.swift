import Foundation

public struct LocalSite: Codable, Identifiable, Hashable {
	public let actor_name_max_length: Int
	public let application_email_admins: Bool
	public let application_question: String?
	public let captcha_difficulty: String
	public let captcha_enabled: Bool
	public let community_creation_admin_only: Bool
	public let default_post_listing_type: String
	public let default_theme: String
	public let enable_downvotes: Bool
	public let enable_nsfw: Bool
	public let federation_debug: Bool?
	public let federation_enabled: Bool
	public let federation_worker_count: Int
	public let hide_modlog_mod_names: Bool
	public let id: Int
	public let legal_information: String?
	public let private_instance: Bool
	public let published: String
	public let registration_mode: RegistrationMode
	public let reports_email_admins: Bool
	public let require_email_verification: Bool
	public let site_id: Int
	public let site_setup: Bool
	public let slur_filter_regex: String?
	public let updated: String?

	public init(
		actor_name_max_length: Int,
		application_email_admins: Bool,
		application_question: String? = nil,
		captcha_difficulty: String,
		captcha_enabled: Bool,
		community_creation_admin_only: Bool,
		default_post_listing_type: String,
		default_theme: String,
		enable_downvotes: Bool,
		enable_nsfw: Bool,
		federation_debug: Bool? = nil,
		federation_enabled: Bool,
		federation_worker_count: Int,
		hide_modlog_mod_names: Bool,
		id: Int,
		legal_information: String? = nil,
		private_instance: Bool,
		published: String,
		registration_mode: RegistrationMode,
		reports_email_admins: Bool,
		require_email_verification: Bool,
		site_id: Int,
		site_setup: Bool,
		slur_filter_regex: String? = nil,
		updated: String? = nil
	) {
		self.actor_name_max_length = actor_name_max_length
		self.application_email_admins = application_email_admins
		self.application_question = application_question
		self.captcha_difficulty = captcha_difficulty
		self.captcha_enabled = captcha_enabled
		self.community_creation_admin_only = community_creation_admin_only
		self.default_post_listing_type = default_post_listing_type
		self.default_theme = default_theme
		self.enable_downvotes = enable_downvotes
		self.enable_nsfw = enable_nsfw
		self.federation_debug = federation_debug
		self.federation_enabled = federation_enabled
		self.federation_worker_count = federation_worker_count
		self.hide_modlog_mod_names = hide_modlog_mod_names
		self.id = id
		self.legal_information = legal_information
		self.private_instance = private_instance
		self.published = published
		self.registration_mode = registration_mode
		self.reports_email_admins = reports_email_admins
		self.require_email_verification = require_email_verification
		self.site_id = site_id
		self.site_setup = site_setup
		self.slur_filter_regex = slur_filter_regex
		self.updated = updated
	}
}
