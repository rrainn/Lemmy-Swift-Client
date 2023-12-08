import Foundation

public struct PurgePersonRequest: APIRequest {
	public typealias Response = SuccessResponse

	public static let httpMethod: HTTPMethod = .post
	public static let path: String = "/admin/purge/person"

	public let personId: PersonId
	public let reason: String?

	public init(
		personId: PersonId,
		reason: String? = nil
	) {
		self.personId = personId
		self.reason = reason
	}
}
