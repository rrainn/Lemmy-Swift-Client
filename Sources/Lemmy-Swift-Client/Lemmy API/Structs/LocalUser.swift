import Foundation

public struct LocalUser: Codable, Identifiable, Hashable {
	public let id: LocalUserId
	public let person_id: PersonId
	public let email: String?
	public let show_nsfw: Bool
	public let theme: String
	public let default_sort_type: SortType
	public let default_listing_type: ListingType
	public let interface_language: String
	public let show_avatars: Bool
	public let send_notifications_to_email: Bool
	public let show_scores: Bool
	public let show_bot_accounts: Bool
	public let show_read_posts: Bool
	public let email_verified: Bool
	public let accepted_application: Bool
	public let open_links_in_new_tab: Bool
	public let blur_nsfw: Bool
	public let auto_expand: Bool
	public let infinite_scroll_enabled: Bool
	public let admin: Bool
	public let post_listing_mode: PostListingMode
	public let totp_2fa_enabled: Bool
	public let enable_keyboard_navigation: Bool
	public let enable_animated_images: Bool
	public let collapse_bot_comments: Bool

	public init(
		id: LocalUserId,
		person_id: PersonId,
		email: String? = nil,
		show_nsfw: Bool,
		theme: String,
		default_sort_type: SortType,
		default_listing_type: ListingType,
		interface_language: String,
		show_avatars: Bool,
		send_notifications_to_email: Bool,
		show_scores: Bool,
		show_bot_accounts: Bool,
		show_read_posts: Bool,
		email_verified: Bool,
		accepted_application: Bool,
		open_links_in_new_tab: Bool,
		blur_nsfw: Bool,
		auto_expand: Bool,
		infinite_scroll_enabled: Bool,
		admin: Bool,
		post_listing_mode: PostListingMode,
		totp_2fa_enabled: Bool,
		enable_keyboard_navigation: Bool,
		enable_animated_images: Bool,
		collapse_bot_comments: Bool
	) {
		self.id = id
		self.person_id = person_id
		self.email = email
		self.show_nsfw = show_nsfw
		self.theme = theme
		self.default_sort_type = default_sort_type
		self.default_listing_type = default_listing_type
		self.interface_language = interface_language
		self.show_avatars = show_avatars
		self.send_notifications_to_email = send_notifications_to_email
		self.show_scores = show_scores
		self.show_bot_accounts = show_bot_accounts
		self.show_read_posts = show_read_posts
		self.email_verified = email_verified
		self.accepted_application = accepted_application
		self.open_links_in_new_tab = open_links_in_new_tab
		self.blur_nsfw = blur_nsfw
		self.auto_expand = auto_expand
		self.infinite_scroll_enabled = infinite_scroll_enabled
		self.admin = admin
		self.post_listing_mode = post_listing_mode
		self.totp_2fa_enabled = totp_2fa_enabled
		self.enable_keyboard_navigation = enable_keyboard_navigation
		self.enable_animated_images = enable_animated_images
		self.collapse_bot_comments = collapse_bot_comments
	}
}
