import Foundation

public struct PurgePersonRequest: APIRequest {
	public typealias Response = SuccessResponse

	public static let httpMethod: HTTPMethod = .post
	public static let path: String = "/admin/purge/person"

	public let person_id: PersonId?
	public let reason: String?

	public init(
		person_id: PersonId? = nil,
		reason: String? = nil
	) {
		self.person_id = person_id
		self.reason = reason
	}
}
