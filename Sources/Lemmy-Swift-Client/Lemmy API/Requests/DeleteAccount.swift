import Foundation

public struct DeleteAccountRequest: APIRequest {
	public typealias Response = DeleteAccountResponse

	public static let httpMethod: HTTPMethod = .post
	public static let path: String = "/user/delete_account"

	public let password: String
	public let auth: String

	public init(
		password: String,
		auth: String
	) {
		self.password = password
		self.auth = auth
	}
}

public struct DeleteAccountResponse: APIResponse {
	public init() {}
}
