import Foundation

public struct DeleteAccountRequest: APIRequest {
	public typealias Response = SuccessResponse

	public static let httpMethod: HTTPMethod = .post
	public static let path: String = "/user/delete_account"

	public let password: String?
	public let delete_content: Bool?

	public init(
		password: String? = nil,
		delete_content: Bool? = nil
	) {
		self.password = password
		self.delete_content = delete_content
	}
}
