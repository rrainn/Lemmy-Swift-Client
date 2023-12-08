import Foundation

public struct GetModlogRequest: APIRequest {
	public typealias Response = GetModlogResponse

	public static let httpMethod: HTTPMethod = .get
	public static let path: String = "/modlog"

	public let modPersonId: PersonId?
	public let communityId: CommunityId?
	public let page: Int?
	public let limit: Int?
	public let type: ModlogActionType?
	public let otherPersonId: PersonId?

	public init(
		modPersonId: PersonId? = nil,
		communityId: CommunityId? = nil,
		page: Int? = nil,
		limit: Int? = nil,
		type: ModlogActionType? = nil,
		otherPersonId: PersonId? = nil
	) {
		self.modPersonId = modPersonId
		self.communityId = communityId
		self.page = page
		self.limit = limit
		self.type = type
		self.otherPersonId = otherPersonId
	}
}

public struct GetModlogResponse: APIResponse {
	public let removedPosts: [ModRemovePostView]
	public let lockedPosts: [ModLockPostView]
	public let featuredPosts: [ModFeaturePostView]
	public let removedComments: [ModRemoveCommentView]
	public let removedCommunities: [ModRemoveCommunityView]
	public let bannedFromCommunity: [ModBanFromCommunityView]
	public let banned: [ModBanView]
	public let addedToCommunity: [ModAddCommunityView]
	public let transferredToCommunity: [ModTransferCommunityView]
	public let added: [ModAddView]
	public let adminPurgedPersons: [AdminPurgePersonView]
	public let adminPurgedCommunities: [AdminPurgeCommunityView]
	public let adminPurgedPosts: [AdminPurgePostView]
	public let adminPurgedComments: [AdminPurgeCommentView]
	public let hiddenCommunities: [ModHideCommunityView]

	public init(
		removedPosts: [ModRemovePostView],
		lockedPosts: [ModLockPostView],
		featuredPosts: [ModFeaturePostView],
		removedComments: [ModRemoveCommentView],
		removedCommunities: [ModRemoveCommunityView],
		bannedFromCommunity: [ModBanFromCommunityView],
		banned: [ModBanView],
		addedToCommunity: [ModAddCommunityView],
		transferredToCommunity: [ModTransferCommunityView],
		added: [ModAddView],
		adminPurgedPersons: [AdminPurgePersonView],
		adminPurgedCommunities: [AdminPurgeCommunityView],
		adminPurgedPosts: [AdminPurgePostView],
		adminPurgedComments: [AdminPurgeCommentView],
		hiddenCommunities: [ModHideCommunityView]
	) {
		self.removedPosts = removedPosts
		self.lockedPosts = lockedPosts
		self.featuredPosts = featuredPosts
		self.removedComments = removedComments
		self.removedCommunities = removedCommunities
		self.bannedFromCommunity = bannedFromCommunity
		self.banned = banned
		self.addedToCommunity = addedToCommunity
		self.transferredToCommunity = transferredToCommunity
		self.added = added
		self.adminPurgedPersons = adminPurgedPersons
		self.adminPurgedCommunities = adminPurgedCommunities
		self.adminPurgedPosts = adminPurgedPosts
		self.adminPurgedComments = adminPurgedComments
		self.hiddenCommunities = hiddenCommunities
	}
}
