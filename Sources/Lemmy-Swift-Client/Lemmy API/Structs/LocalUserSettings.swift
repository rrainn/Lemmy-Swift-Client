import Foundation

public struct LocalUserSettings: Codable {
	public let accepted_application: Bool
	public let default_listing_type: Int
	public let default_sort_type: Int
	public let email: String?
	public let email_verified: Bool
	public let id: Int
	public let interface_language: String
	public let person_id: Int
	public let send_notifications_to_email: Bool
	public let show_avatars: Bool
	public let show_bot_accounts: Bool
	public let show_new_post_notifs: Bool
	public let show_nsfw: Bool
	public let show_read_posts: Bool
	public let show_scores: Bool
	public let theme: String
	public let validator_time: String

	public init(
		accepted_application: Bool,
		default_listing_type: Int,
		default_sort_type: Int,
		email: String? = nil,
		email_verified: Bool,
		id: Int,
		interface_language: String,
		person_id: Int,
		send_notifications_to_email: Bool,
		show_avatars: Bool,
		show_bot_accounts: Bool,
		show_new_post_notifs: Bool,
		show_nsfw: Bool,
		show_read_posts: Bool,
		show_scores: Bool,
		theme: String,
		validator_time: String
	) {
		self.accepted_application = accepted_application
		self.default_listing_type = default_listing_type
		self.default_sort_type = default_sort_type
		self.email = email
		self.email_verified = email_verified
		self.id = id
		self.interface_language = interface_language
		self.person_id = person_id
		self.send_notifications_to_email = send_notifications_to_email
		self.show_avatars = show_avatars
		self.show_bot_accounts = show_bot_accounts
		self.show_new_post_notifs = show_new_post_notifs
		self.show_nsfw = show_nsfw
		self.show_read_posts = show_read_posts
		self.show_scores = show_scores
		self.theme = theme
		self.validator_time = validator_time
	}
}
