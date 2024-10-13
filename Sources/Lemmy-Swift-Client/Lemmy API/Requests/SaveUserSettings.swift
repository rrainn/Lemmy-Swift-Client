import Foundation

public struct SaveUserSettingsRequest: APIRequest {
	public typealias Response = SuccessResponse

	public static let httpMethod: HTTPMethod = .put
	public static let path: String = "/user/save_user_settings"

	public let show_nsfw: Bool?
	public let blur_nsfw: Bool?
	public let auto_expand: Bool?
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
	public let discussion_languages: [LanguageId]?
	public let open_links_in_new_tab: Bool?
	public let infinite_scroll_enabled: Bool?
	public let post_listing_mode: PostListingMode?
	public let enable_keyboard_navigation: Bool?
	public let enable_animated_images: Bool?
	public let collapse_bot_comments: Bool?
	public let show_scores: Bool?
	public let show_upvotes: Bool?
	public let show_downvotes: Bool?
	public let show_upvote_percentage: Bool?

	public init(
		show_nsfw: Bool? = nil,
		blur_nsfw: Bool? = nil,
		auto_expand: Bool? = nil,
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
		discussion_languages: [LanguageId]? = nil,
		open_links_in_new_tab: Bool? = nil,
		infinite_scroll_enabled: Bool? = nil,
		post_listing_mode: PostListingMode? = nil,
		enable_keyboard_navigation: Bool? = nil,
		enable_animated_images: Bool? = nil,
		collapse_bot_comments: Bool? = nil,
		show_scores: Bool? = nil,
		show_upvotes: Bool? = nil,
		show_downvotes: Bool? = nil,
		show_upvote_percentage: Bool? = nil
	) {
		self.show_nsfw = show_nsfw
		self.blur_nsfw = blur_nsfw
		self.auto_expand = auto_expand
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
		self.discussion_languages = discussion_languages
		self.open_links_in_new_tab = open_links_in_new_tab
		self.infinite_scroll_enabled = infinite_scroll_enabled
		self.post_listing_mode = post_listing_mode
		self.enable_keyboard_navigation = enable_keyboard_navigation
		self.enable_animated_images = enable_animated_images
		self.collapse_bot_comments = collapse_bot_comments
		self.show_scores = show_scores
		self.show_upvotes = show_upvotes
		self.show_downvotes = show_downvotes
		self.show_upvote_percentage = show_upvote_percentage
	}
}
