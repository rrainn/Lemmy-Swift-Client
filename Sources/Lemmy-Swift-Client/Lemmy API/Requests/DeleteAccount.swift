import Foundation

public struct DeleteAccountRequest: APIRequest {
	public typealias Response = SuccessResponse

	public static let httpMethod: HTTPMethod = .post
	public static let path: String = "/user/delete_account"

	public let password: String
	public let deleteContent: Bool

	public init(
		password: String,
		deleteContent: Bool
	) {
		self.password = password
		self.deleteContent = deleteContent
	}
}
