import Foundation

public struct GetRegistrationApplicationRequest: APIRequest {
	public typealias Response = RegistrationApplicationResponse

	public static let httpMethod: HTTPMethod = .get
	public static let path: String = "/admin/registration_application"

	public let person_id: PersonId?

	public init(
		person_id: PersonId? = nil
	) {
		self.person_id = person_id
	}
}
