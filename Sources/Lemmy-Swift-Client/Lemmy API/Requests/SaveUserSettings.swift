import Foundation

public struct SaveUserSettingsRequest: APIRequest {
	public typealias Response = LoginResponse

	public static let httpMethod: HTTPMethod = .put
	public static let path: String = "/user/save_user_settings"

	public let show_nsfw: Bool?
	public let show_scores: Bool?
	public let theme: String?
	public let default_sort_type: SortType?
	public let default_listing_type: ListingType?
	public let interface_language: String?
	public let avatar: String?
	public let banner: String?
	public let display_name: String?
	public let email: String?
	public let bio: String?
	public let matrix_user_id: String?
	public let show_avatars: Bool?
	public let send_notifications_to_email: Bool?
	public let bot_account: Bool?
	public let show_bot_accounts: Bool?
	public let show_read_posts: Bool?
	public let show_new_post_notifs: Bool?
	public let discussion_languages: [LanguageId]?
	public let generate_totp_2fa: Bool?
	public let auth: String
	public let open_links_in_new_tab: Bool?

	public init(
		show_nsfw: Bool? = nil,
		show_scores: Bool? = nil,
		theme: String? = nil,
		default_sort_type: SortType? = nil,
		default_listing_type: ListingType? = nil,
		interface_language: String? = nil,
		avatar: String? = nil,
		banner: String? = nil,
		display_name: String? = nil,
		email: String? = nil,
		bio: String? = nil,
		matrix_user_id: String? = nil,
		show_avatars: Bool? = nil,
		send_notifications_to_email: Bool? = nil,
		bot_account: Bool? = nil,
		show_bot_accounts: Bool? = nil,
		show_read_posts: Bool? = nil,
		show_new_post_notifs: Bool? = nil,
		discussion_languages: [LanguageId]? = nil,
		generate_totp_2fa: Bool? = nil,
		auth: String,
		open_links_in_new_tab: Bool? = nil
	) {
		self.show_nsfw = show_nsfw
		self.show_scores = show_scores
		self.theme = theme
		self.default_sort_type = default_sort_type
		self.default_listing_type = default_listing_type
		self.interface_language = interface_language
		self.avatar = avatar
		self.banner = banner
		self.display_name = display_name
		self.email = email
		self.bio = bio
		self.matrix_user_id = matrix_user_id
		self.show_avatars = show_avatars
		self.send_notifications_to_email = send_notifications_to_email
		self.bot_account = bot_account
		self.show_bot_accounts = show_bot_accounts
		self.show_read_posts = show_read_posts
		self.show_new_post_notifs = show_new_post_notifs
		self.discussion_languages = discussion_languages
		self.generate_totp_2fa = generate_totp_2fa
		self.auth = auth
		self.open_links_in_new_tab = open_links_in_new_tab
	}
}
