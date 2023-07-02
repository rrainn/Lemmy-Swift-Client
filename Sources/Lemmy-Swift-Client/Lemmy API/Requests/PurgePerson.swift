import Foundation

public struct PurgePersonRequest: APIRequest {
	public typealias Response = PurgeItemResponse

	public static let httpMethod: HTTPMethod = .post
	public static let path: String = "/admin/purge/person"

	public let auth: String
	public let person_id: String
	public let reason: String?

	public init(auth: String, person_id: String, reason: String? = nil) {
		self.auth = auth
		self.person_id = person_id
		self.reason = reason
	}
}
