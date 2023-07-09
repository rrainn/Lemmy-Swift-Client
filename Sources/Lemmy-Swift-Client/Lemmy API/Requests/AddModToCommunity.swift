import Foundation

public struct AddModToCommunityRequest: APIRequest {
	public typealias Response = AddModToCommunityResponse

	public static let httpMethod: HTTPMethod = .post
	public static let path: String = "/community/mod"

	public let community_id: CommunityId
	public let person_id: PersonId
	public let added: Bool
	public let auth: String

	public init(
		community_id: CommunityId,
		person_id: PersonId,
		added: Bool,
		auth: String
	) {
		self.community_id = community_id
		self.person_id = person_id
		self.added = added
		self.auth = auth
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
