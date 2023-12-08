import Foundation

public struct AddAdminRequest: APIRequest {
	public typealias Response = AddAdminResponse

	public static let httpMethod: HTTPMethod = .post
	public static let path: String = "/admin/add"

	public let personId: PersonId
	public let added: Bool

	public init(
		personId: PersonId,
		added: Bool
	) {
		self.personId = personId
		self.added = added
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
