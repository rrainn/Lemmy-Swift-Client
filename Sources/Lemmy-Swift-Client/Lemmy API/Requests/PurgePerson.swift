import Foundation

public struct PurgePersonRequest: APIRequest {
	public typealias Response = PurgeItemResponse

	public static let httpMethod: HTTPMethod = .post
	public static let path: String = "/admin/purge/person"

	public let person_id: PersonId
	public let reason: String?
	public let auth: String

	public init(
		person_id: PersonId,
		reason: String? = nil,
		auth: String
	) {
		self.person_id = person_id
		self.reason = reason
		self.auth = auth
	}
}

public struct PurgeItemResponse: APIResponse {
	public let success: Bool

	public init(
		success: Bool
	) {
		self.success = success
	}
}
