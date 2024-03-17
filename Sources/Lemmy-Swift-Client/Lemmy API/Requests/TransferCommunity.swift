import Foundation

public struct TransferCommunityRequest: APIRequest {
	public typealias Response = GetCommunityResponse

	public static let httpMethod: HTTPMethod = .post
	public static let path: String = "/community/transfer"

	public let community_id: CommunityId?
	public let person_id: PersonId?

	public init(
		community_id: CommunityId? = nil,
		person_id: PersonId? = nil
	) {
		self.community_id = community_id
		self.person_id = person_id
	}
}
