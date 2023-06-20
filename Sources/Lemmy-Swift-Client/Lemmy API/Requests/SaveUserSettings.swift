//
//  SaveUserSettings.swift
//
//
//  Created by Charlie Fish on 6/11/23.
//

import Foundation

public struct SaveUserSettingsRequest: APIRequest {
	public typealias Response = LoginResponse

	public static let httpMethod: HTTPMethod = .put
	public static let path: String = "/user/save_user_settings"

	public let auth: String
	public let avatar: String?
	public let banner: String?
	public let bio: String?
	public let bot_account: Bool?
	public let default_listing_type: Int?
	public let default_sort_type: Int?
	public let discussion_languages: [Int]?
	public let display_name: String?
	public let email: String?
	public let interface_language: String?
	public let matrix_user_id: String?
	public let send_notifications_to_email: Bool?
	public let show_avatars: Bool?
	public let show_bot_accounts: Bool?
	public let show_new_post_notifs: Bool?
	public let show_nsfw: Bool?
	public let show_read_posts: Bool?
	public let show_scores: Bool?
	public let theme: String?

	public init(auth: String, avatar: String? = nil, banner: String? = nil, bio: String? = nil, bot_account: Bool? = nil, default_listing_type: Int? = nil, default_sort_type: Int? = nil, discussion_languages: [Int]? = nil, display_name: String? = nil, email: String? = nil, interface_language: String? = nil, matrix_user_id: String? = nil, send_notifications_to_email: Bool? = nil, show_avatars: Bool? = nil, show_bot_accounts: Bool? = nil, show_new_post_notifs: Bool? = nil, show_nsfw: Bool? = nil, show_read_posts: Bool? = nil, show_scores: Bool? = nil, theme: String? = nil) {
		self.auth = auth
		self.avatar = avatar
		self.banner = banner
		self.bio = bio
		self.bot_account = bot_account
		self.default_listing_type = default_listing_type
		self.default_sort_type = default_sort_type
		self.discussion_languages = discussion_languages
		self.display_name = display_name
		self.email = email
		self.interface_language = interface_language
		self.matrix_user_id = matrix_user_id
		self.send_notifications_to_email = send_notifications_to_email
		self.show_avatars = show_avatars
		self.show_bot_accounts = show_bot_accounts
		self.show_new_post_notifs = show_new_post_notifs
		self.show_nsfw = show_nsfw
		self.show_read_posts = show_read_posts
		self.show_scores = show_scores
		self.theme = theme
	}
    
    public init(auth: String, avatar: String? = nil, banner: String? = nil, bio: String? = nil, bot_account: Bool? = nil, default_listing_type: ListingType? = nil, default_sort_type: SortType? = nil, discussion_languages: [Int]? = nil, display_name: String? = nil, email: String? = nil, interface_language: String? = nil, matrix_user_id: String? = nil, send_notifications_to_email: Bool? = nil, show_avatars: Bool? = nil, show_bot_accounts: Bool? = nil, show_new_post_notifs: Bool? = nil, show_nsfw: Bool? = nil, show_read_posts: Bool? = nil, show_scores: Bool? = nil, theme: String? = nil) {
        self.auth = auth
        self.avatar = avatar
        self.banner = banner
        self.bio = bio
        self.bot_account = bot_account
        self.default_listing_type = default_listing_type?.intValue
        self.default_sort_type = default_sort_type?.intValue
        self.discussion_languages = discussion_languages
        self.display_name = display_name
        self.email = email
        self.interface_language = interface_language
        self.matrix_user_id = matrix_user_id
        self.send_notifications_to_email = send_notifications_to_email
        self.show_avatars = show_avatars
        self.show_bot_accounts = show_bot_accounts
        self.show_new_post_notifs = show_new_post_notifs
        self.show_nsfw = show_nsfw
        self.show_read_posts = show_read_posts
        self.show_scores = show_scores
        self.theme = theme
    }
}
