import Foundation

public struct AddModToCommunityRequest: APIRequest {
	public typealias Response = AddModToCommunityResponse

	public static let httpMethod: HTTPMethod = .post
	public static let path: String = "/community/mod"

	public let communityId: CommunityId
	public let personId: PersonId
	public let added: Bool

	public init(
		communityId: CommunityId,
		personId: PersonId,
		added: Bool
	) {
		self.communityId = communityId
		self.personId = personId
		self.added = added
	}
}

public struct AddModToCommunityResponse: APIResponse {
	public let moderators: [CommunityModeratorView]

	public init(
		moderators: [CommunityModeratorView]
	) {
		self.moderators = moderators
	}
}
