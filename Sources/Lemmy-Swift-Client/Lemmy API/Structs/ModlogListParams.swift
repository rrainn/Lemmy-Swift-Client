import Foundation

public struct ModlogListParams: Codable, Hashable {
	public let communityId: CommunityId?
	public let modPersonId: PersonId?
	public let otherPersonId: PersonId?
	public let page: Int?
	public let limit: Int?
	public let hideModlogNames: Bool

	public init(
		communityId: CommunityId? = nil,
		modPersonId: PersonId? = nil,
		otherPersonId: PersonId? = nil,
		page: Int? = nil,
		limit: Int? = nil,
		hideModlogNames: Bool
	) {
		self.communityId = communityId
		self.modPersonId = modPersonId
		self.otherPersonId = otherPersonId
		self.page = page
		self.limit = limit
		self.hideModlogNames = hideModlogNames
	}
}
