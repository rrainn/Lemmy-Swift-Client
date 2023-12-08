import Foundation

public struct BlockPersonRequest: APIRequest {
	public typealias Response = BlockPersonResponse

	public static let httpMethod: HTTPMethod = .post
	public static let path: String = "/user/block"

	public let personId: PersonId
	public let block: Bool

	public init(
		personId: PersonId,
		block: Bool
	) {
		self.personId = personId
		self.block = block
	}
}

public struct BlockPersonResponse: APIResponse {
	public let personView: PersonView
	public let blocked: Bool

	public init(
		personView: PersonView,
		blocked: Bool
	) {
		self.personView = personView
		self.blocked = blocked
	}
}
