import Foundation

public struct SaveUserSettingsRequest: APIRequest {
	public typealias Response = SuccessResponse

	public static let httpMethod: HTTPMethod = .put
	public static let path: String = "/user/save_user_settings"

	public let showNsfw: Bool?
	public let blurNsfw: Bool?
	public let autoExpand: Bool?
	public let showScores: Bool?
	public let theme: String?
	public let defaultSortType: SortType?
	public let defaultListingType: ListingType?
	public let interfaceLanguage: String?
	public let avatar: String?
	public let banner: String?
	public let displayName: String?
	public let email: String?
	public let bio: String?
	public let matrixUserId: String?
	public let showAvatars: Bool?
	public let sendNotificationsToEmail: Bool?
	public let botAccount: Bool?
	public let showBotAccounts: Bool?
	public let showReadPosts: Bool?
	public let discussionLanguages: [LanguageId]?
	public let openLinksInNewTab: Bool?
	public let infiniteScrollEnabled: Bool?
	public let postListingMode: PostListingMode?
	public let enableKeyboardNavigation: Bool?
	public let enableAnimatedImages: Bool?
	public let collapseBotComments: Bool?

	public init(
		showNsfw: Bool? = nil,
		blurNsfw: Bool? = nil,
		autoExpand: Bool? = nil,
		showScores: Bool? = nil,
		theme: String? = nil,
		defaultSortType: SortType? = nil,
		defaultListingType: ListingType? = nil,
		interfaceLanguage: String? = nil,
		avatar: String? = nil,
		banner: String? = nil,
		displayName: String? = nil,
		email: String? = nil,
		bio: String? = nil,
		matrixUserId: String? = nil,
		showAvatars: Bool? = nil,
		sendNotificationsToEmail: Bool? = nil,
		botAccount: Bool? = nil,
		showBotAccounts: Bool? = nil,
		showReadPosts: Bool? = nil,
		discussionLanguages: [LanguageId]? = nil,
		openLinksInNewTab: Bool? = nil,
		infiniteScrollEnabled: Bool? = nil,
		postListingMode: PostListingMode? = nil,
		enableKeyboardNavigation: Bool? = nil,
		enableAnimatedImages: Bool? = nil,
		collapseBotComments: Bool? = nil
	) {
		self.showNsfw = showNsfw
		self.blurNsfw = blurNsfw
		self.autoExpand = autoExpand
		self.showScores = showScores
		self.theme = theme
		self.defaultSortType = defaultSortType
		self.defaultListingType = defaultListingType
		self.interfaceLanguage = interfaceLanguage
		self.avatar = avatar
		self.banner = banner
		self.displayName = displayName
		self.email = email
		self.bio = bio
		self.matrixUserId = matrixUserId
		self.showAvatars = showAvatars
		self.sendNotificationsToEmail = sendNotificationsToEmail
		self.botAccount = botAccount
		self.showBotAccounts = showBotAccounts
		self.showReadPosts = showReadPosts
		self.discussionLanguages = discussionLanguages
		self.openLinksInNewTab = openLinksInNewTab
		self.infiniteScrollEnabled = infiniteScrollEnabled
		self.postListingMode = postListingMode
		self.enableKeyboardNavigation = enableKeyboardNavigation
		self.enableAnimatedImages = enableAnimatedImages
		self.collapseBotComments = collapseBotComments
	}
}
