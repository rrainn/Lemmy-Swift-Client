import Foundation

public struct BlockPersonRequest: APIRequest {
	public typealias Response = BlockPersonResponse

	public static let httpMethod: HTTPMethod = .post
	public static let path: String = "/user/block"

	public let person_id: PersonId
	public let block: Bool
	public let auth: String

	public init(
		person_id: PersonId,
		block: Bool,
		auth: String
	) {
		self.person_id = person_id
		self.block = block
		self.auth = auth
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
