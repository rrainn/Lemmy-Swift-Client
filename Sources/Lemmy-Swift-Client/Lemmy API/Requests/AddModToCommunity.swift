import Foundation

public struct AddModToCommunityRequest: APIRequest {
	public typealias Response = AddModToCommunityResponse

	public static let httpMethod: HTTPMethod = .post
	public static let path: String = "/community/mod"

	public let community_id: CommunityId?
	public let person_id: PersonId?
	public let added: Bool?

	public init(
		community_id: CommunityId? = nil,
		person_id: PersonId? = nil,
		added: Bool? = nil
	) {
		self.community_id = community_id
		self.person_id = person_id
		self.added = added
	}
}

public struct AddModToCommunityResponse: APIResponse {
	public let moderators: [CommunityModeratorView]?

	public init(
		moderators: [CommunityModeratorView]? = nil
	) {
		self.moderators = moderators
	}
}
