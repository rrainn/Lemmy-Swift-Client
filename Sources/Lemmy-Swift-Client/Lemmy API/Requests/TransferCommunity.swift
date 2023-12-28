import Foundation

public struct TransferCommunityRequest: APIRequest {
	public typealias Response = GetCommunityResponse

	public static let httpMethod: HTTPMethod = .post
	public static let path: String = "/community/transfer"

	public let communityId: CommunityId
	public let personId: PersonId

	public init(
		communityId: CommunityId,
		personId: PersonId
	) {
		self.communityId = communityId
		self.personId = personId
	}
}
