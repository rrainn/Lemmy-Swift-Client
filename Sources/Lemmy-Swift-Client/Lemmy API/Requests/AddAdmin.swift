import Foundation

public struct AddAdminRequest: APIRequest {
	public typealias Response = AddAdminResponse

	public static let httpMethod: HTTPMethod = .post
	public static let path: String = "/admin/add"

	public let person_id: PersonId?
	public let added: Bool?

	public init(
		person_id: PersonId? = nil,
		added: Bool? = nil
	) {
		self.person_id = person_id
		self.added = added
	}
}

public struct AddAdminResponse: APIResponse {
	public let admins: [PersonView]?

	public init(
		admins: [PersonView]? = nil
	) {
		self.admins = admins
	}
}
