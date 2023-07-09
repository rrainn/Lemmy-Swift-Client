import Foundation

public struct AddAdminRequest: APIRequest {
	public typealias Response = AddAdminResponse

	public static let httpMethod: HTTPMethod = .post
	public static let path: String = "/admin/add"

	public let person_id: PersonId
	public let added: Bool
	public let auth: String

	public init(
		person_id: PersonId,
		added: Bool,
		auth: String
	) {
		self.person_id = person_id
		self.added = added
		self.auth = auth
	}
}

public struct AddAdminResponse: APIResponse {
	public let admins: [PersonView]

	public init(
		admins: [PersonView]
	) {
		self.admins = admins
	}
}
