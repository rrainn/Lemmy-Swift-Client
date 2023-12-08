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
	public let enableDownvotes: Bool?
	public let enableNsfw: Bool?
	public let communityCreationAdminOnly: Bool?
	public let requireEmailVerification: Bool?
	public let applicationQuestion: String?
	public let privateInstance: Bool?
	public let defaultTheme: String?
	public let defaultPostListingType: ListingType?
	public let legalInformation: String?
	public let applicationEmailAdmins: Bool?
	public let hideModlogModNames: Bool?
	public let discussionLanguages: [LanguageId]?
	public let slurFilterRegex: String?
	public let actorNameMaxLength: Int?
	public let rateLimitMessage: Int?
	public let rateLimitMessagePerSecond: Int?
	public let rateLimitPost: Int?
	public let rateLimitPostPerSecond: Int?
	public let rateLimitRegister: Int?
	public let rateLimitRegisterPerSecond: Int?
	public let rateLimitImage: Int?
	public let rateLimitImagePerSecond: Int?
	public let rateLimitComment: Int?
	public let rateLimitCommentPerSecond: Int?
	public let rateLimitSearch: Int?
	public let rateLimitSearchPerSecond: Int?
	public let federationEnabled: Bool?
	public let federationDebug: Bool?
	public let captchaEnabled: Bool?
	public let captchaDifficulty: String?
	public let allowedInstances: [String]?
	public let blockedInstances: [String]?
	public let taglines: [String]?
	public let registrationMode: RegistrationMode?
	public let reportsEmailAdmins: Bool?

	public init(
		name: String? = nil,
		sidebar: String? = nil,
		description: String? = nil,
		icon: String? = nil,
		banner: String? = nil,
		enableDownvotes: Bool? = nil,
		enableNsfw: Bool? = nil,
		communityCreationAdminOnly: Bool? = nil,
		requireEmailVerification: Bool? = nil,
		applicationQuestion: String? = nil,
		privateInstance: Bool? = nil,
		defaultTheme: String? = nil,
		defaultPostListingType: ListingType? = nil,
		legalInformation: String? = nil,
		applicationEmailAdmins: Bool? = nil,
		hideModlogModNames: Bool? = nil,
		discussionLanguages: [LanguageId]? = nil,
		slurFilterRegex: String? = nil,
		actorNameMaxLength: Int? = nil,
		rateLimitMessage: Int? = nil,
		rateLimitMessagePerSecond: Int? = nil,
		rateLimitPost: Int? = nil,
		rateLimitPostPerSecond: Int? = nil,
		rateLimitRegister: Int? = nil,
		rateLimitRegisterPerSecond: Int? = nil,
		rateLimitImage: Int? = nil,
		rateLimitImagePerSecond: Int? = nil,
		rateLimitComment: Int? = nil,
		rateLimitCommentPerSecond: Int? = nil,
		rateLimitSearch: Int? = nil,
		rateLimitSearchPerSecond: Int? = nil,
		federationEnabled: Bool? = nil,
		federationDebug: Bool? = nil,
		captchaEnabled: Bool? = nil,
		captchaDifficulty: String? = nil,
		allowedInstances: [String]? = nil,
		blockedInstances: [String]? = nil,
		taglines: [String]? = nil,
		registrationMode: RegistrationMode? = nil,
		reportsEmailAdmins: Bool? = nil
	) {
		self.name = name
		self.sidebar = sidebar
		self.description = description
		self.icon = icon
		self.banner = banner
		self.enableDownvotes = enableDownvotes
		self.enableNsfw = enableNsfw
		self.communityCreationAdminOnly = communityCreationAdminOnly
		self.requireEmailVerification = requireEmailVerification
		self.applicationQuestion = applicationQuestion
		self.privateInstance = privateInstance
		self.defaultTheme = defaultTheme
		self.defaultPostListingType = defaultPostListingType
		self.legalInformation = legalInformation
		self.applicationEmailAdmins = applicationEmailAdmins
		self.hideModlogModNames = hideModlogModNames
		self.discussionLanguages = discussionLanguages
		self.slurFilterRegex = slurFilterRegex
		self.actorNameMaxLength = actorNameMaxLength
		self.rateLimitMessage = rateLimitMessage
		self.rateLimitMessagePerSecond = rateLimitMessagePerSecond
		self.rateLimitPost = rateLimitPost
		self.rateLimitPostPerSecond = rateLimitPostPerSecond
		self.rateLimitRegister = rateLimitRegister
		self.rateLimitRegisterPerSecond = rateLimitRegisterPerSecond
		self.rateLimitImage = rateLimitImage
		self.rateLimitImagePerSecond = rateLimitImagePerSecond
		self.rateLimitComment = rateLimitComment
		self.rateLimitCommentPerSecond = rateLimitCommentPerSecond
		self.rateLimitSearch = rateLimitSearch
		self.rateLimitSearchPerSecond = rateLimitSearchPerSecond
		self.federationEnabled = federationEnabled
		self.federationDebug = federationDebug
		self.captchaEnabled = captchaEnabled
		self.captchaDifficulty = captchaDifficulty
		self.allowedInstances = allowedInstances
		self.blockedInstances = blockedInstances
		self.taglines = taglines
		self.registrationMode = registrationMode
		self.reportsEmailAdmins = reportsEmailAdmins
	}
}
