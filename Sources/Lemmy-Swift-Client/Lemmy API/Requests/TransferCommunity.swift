import Foundation

public struct TransferCommunityRequest: APIRequest {
	public typealias Response = GetCommunityResponse

	public static let httpMethod: HTTPMethod = .post
	public static let path: String = "/community/transfer"

	public let community_id: CommunityId
	public let person_id: PersonId
	public let auth: String

	public init(
		community_id: CommunityId,
		person_id: PersonId,
		auth: String
	) {
		self.community_id = community_id
		self.person_id = person_id
		self.auth = auth
	}
}
