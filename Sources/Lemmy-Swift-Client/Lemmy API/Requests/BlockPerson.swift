import Foundation

public struct BlockPersonRequest: APIRequest {
	public typealias Response = BlockPersonResponse

	public static let httpMethod: HTTPMethod = .post
	public static let path: String = "/user/block"

	public let person_id: PersonId
	public let block: Bool

	public init(
		person_id: PersonId,
		block: Bool
	) {
		self.person_id = person_id
		self.block = block
	}
}

public struct BlockPersonResponse: APIResponse {
	public let person_view: PersonView
	public let blocked: Bool

	public init(
		person_view: PersonView,
		blocked: Bool
	) {
		self.person_view = person_view
		self.blocked = blocked
	}
}
