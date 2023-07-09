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
	public let validator_time: String
	public let show_scores: Bool
	public let show_bot_accounts: Bool
	public let show_read_posts: Bool
	public let show_new_post_notifs: Bool
	public let email_verified: Bool
	public let accepted_application: Bool
	public let totp_2fa_url: String?

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
		validator_time: String,
		show_scores: Bool,
		show_bot_accounts: Bool,
		show_read_posts: Bool,
		show_new_post_notifs: Bool,
		email_verified: Bool,
		accepted_application: Bool,
		totp_2fa_url: String? = nil
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
		self.validator_time = validator_time
		self.show_scores = show_scores
		self.show_bot_accounts = show_bot_accounts
		self.show_read_posts = show_read_posts
		self.show_new_post_notifs = show_new_post_notifs
		self.email_verified = email_verified
		self.accepted_application = accepted_application
		self.totp_2fa_url = totp_2fa_url
	}
}
