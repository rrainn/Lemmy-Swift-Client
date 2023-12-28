import Foundation

public struct LocalSite: Codable, Identifiable, Hashable {
	public let id: LocalSiteId
	public let siteId: SiteId
	public let siteSetup: Bool
	public let enableDownvotes: Bool
	public let enableNsfw: Bool
	public let communityCreationAdminOnly: Bool
	public let requireEmailVerification: Bool
	public let applicationQuestion: String?
	public let privateInstance: Bool
	public let defaultTheme: String
	public let defaultPostListingType: ListingType
	public let legalInformation: String?
	public let hideModlogModNames: Bool
	public let applicationEmailAdmins: Bool
	public let slurFilterRegex: String?
	public let actorNameMaxLength: Int
	public let federationEnabled: Bool
	public let captchaEnabled: Bool
	public let captchaDifficulty: String
	public let published: String
	public let updated: String?
	public let registrationMode: RegistrationMode
	public let reportsEmailAdmins: Bool
	public let federationSignedFetch: Bool

	public init(
		id: LocalSiteId,
		siteId: SiteId,
		siteSetup: Bool,
		enableDownvotes: Bool,
		enableNsfw: Bool,
		communityCreationAdminOnly: Bool,
		requireEmailVerification: Bool,
		applicationQuestion: String? = nil,
		privateInstance: Bool,
		defaultTheme: String,
		defaultPostListingType: ListingType,
		legalInformation: String? = nil,
		hideModlogModNames: Bool,
		applicationEmailAdmins: Bool,
		slurFilterRegex: String? = nil,
		actorNameMaxLength: Int,
		federationEnabled: Bool,
		captchaEnabled: Bool,
		captchaDifficulty: String,
		published: String,
		updated: String? = nil,
		registrationMode: RegistrationMode,
		reportsEmailAdmins: Bool,
		federationSignedFetch: Bool
	) {
		self.id = id
		self.siteId = siteId
		self.siteSetup = siteSetup
		self.enableDownvotes = enableDownvotes
		self.enableNsfw = enableNsfw
		self.communityCreationAdminOnly = communityCreationAdminOnly
		self.requireEmailVerification = requireEmailVerification
		self.applicationQuestion = applicationQuestion
		self.privateInstance = privateInstance
		self.defaultTheme = defaultTheme
		self.defaultPostListingType = defaultPostListingType
		self.legalInformation = legalInformation
		self.hideModlogModNames = hideModlogModNames
		self.applicationEmailAdmins = applicationEmailAdmins
		self.slurFilterRegex = slurFilterRegex
		self.actorNameMaxLength = actorNameMaxLength
		self.federationEnabled = federationEnabled
		self.captchaEnabled = captchaEnabled
		self.captchaDifficulty = captchaDifficulty
		self.published = published
		self.updated = updated
		self.registrationMode = registrationMode
		self.reportsEmailAdmins = reportsEmailAdmins
		self.federationSignedFetch = federationSignedFetch
	}
}
